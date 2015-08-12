/*
 *   This file is part of StenoTutor.
 *
 *   StenoTutor is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation, either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   StenoTutor is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 *   Copyright 2013 Emanuele Caruso. See LICENSE.txt for details.
 */

import guru.ttslib.*;

// This thread announces the statement just once
public class Speaker extends Thread {
  // What to say
  String statement;

  // Speech synthesis wrapper
  TTS tts;

  // Set statement and initialize TTS wrapper
  Speaker(String statement, TTS tts) {
    this.statement = statement;
    this.tts = tts;
  }

  // Read the statement once
  void run() {
    tts.speak(statement);
  }
}