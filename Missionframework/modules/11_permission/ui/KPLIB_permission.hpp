/*
    KP Liberation permission dialog

    File: KPLIB_permission.hpp
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2018-12-07
    Last Update: 2018-12-14
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
        A lightweight permission dialog for the commander and admin.
*/

class KPLIB_permission {
    idd = 758011;
    movingEnable = 0;

    class controlsBackground {

        class KPLIB_DialogTitle: KPGUI_PRE_DialogTitleC {
            text = "$STR_KPLIB_DIALOG_PERMISSION_TITLE";
        };

        class KPLIB_DialogArea: KPGUI_PRE_DialogBackgroundC {};

    };

    class controls {



    };

};
