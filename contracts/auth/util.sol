import 'auth/authorized.sol';
import 'auth/enum.sol';

contract DSAuthUtils is DSAuthModesEnum {
    function returnOwned( DSAuthorized what ) internal {
        what.updateAuthority( msg.sender, DSAuthModes.Owner );
    }
    function setOwner( DSAuthorized what, address owner ) internal {
        what.updateAuthority( owner, DSAuthModes.Owner );
    }
    function setAuthority( DSAuthorized what, DSAuthority authority ) internal {
        what.updateAuthority( authority, DSAuthModes.Authority );
    }
}
