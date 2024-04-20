from flask import Blueprint, request, render_template, redirect, url_for
from app.database import db
from app.models.models import Player

player_bp = Blueprint('player_bp', __name__)

# Display all players
@player_bp.route('/')
def players():
    all_players = Player.query.all()
    return render_template('players.html', players=all_players)

# Display form to add a new player
@player_bp.route('/add', methods=['GET'])
def add_player_form():
    return render_template('add_player.html')

# Process adding a new player
@player_bp.route('/add', methods=['POST'])
def add_player():
    name = request.form['name']
    api_id = request.form['api_id']
    new_player = Player(player_name=name, player_api_id_x=api_id)
    db.session.add(new_player)
    db.session.commit()
    return redirect(url_for('player_bp.players'))

# Display form to update a player
@player_bp.route('/update/<int:player_api_id_x>', methods=['GET'])
def update_player_form(player_api_id_x):
    player = Player.query.get(player_api_id_x)
    return render_template('update_player.html', player=player)

# Process updating a player
@player_bp.route('/update/<int:player_api_id_x>', methods=['POST'])
def update_player(player_api_id_x):
    player = Player.query.get_or_404(player_api_id_x)
    player.player_name = request.form['name']
    db.session.commit()
    return redirect(url_for('player_bp.players'))

# Delete a player
@player_bp.route('/delete_player/<int:player_api_id_x>', methods=['POST'])
def delete_player(player_api_id_x):
    player = Player.query.get(player_api_id_x)
    db.session.delete(player)
    db.session.commit()
    return redirect(url_for('player_bp.players'))
