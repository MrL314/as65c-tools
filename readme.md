# asc65c tools
Here is a public download for my recreations of the RICOH as65c toolchain as well as other build-related tools.


## Included Tools
- as65c
- link
- hex2bin
- rel_reader (custom .rel debugging tool)
- addROMdata (custom data insertion tool)


## Building
If you would like to create executables for these programs, install `PyInstaller` via the command line using `pip install pyinstaller`. Then you will be able to use `make.bat` (Windows) or `make <tool name>.build`/`make all` (Linux) to build standalone executables of these programs for your current operating system.


## License
```
The included programs are free software: you can redistribute them and/or
modify them under the terms of the GNU General Public License as published
by the Free Software Foundation, version 3 of the License.

These programs are distributed in the hope that they will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with these programs.  If not, see <http://www.gnu.org/licenses/>.
```
