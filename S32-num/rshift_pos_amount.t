
use v6;
use Test;

plan 189;

my @got = (-300..300) X+> (0..9);
my @exp = (-300, -150, -75, -38, -19, -10, -5, -3, -2, -1, -299, -150, -75, -38, -19, -10, -5, -3, -2, -1, -298, 
     -149, -75, -38, -19, -10, -5, -3, -2, -1, -297, -149, -75, -38, -19, -10, -5, -3, -2, -1, -296, -148, -74, 
     -37, -19, -10, -5, -3, -2, -1, -295, -148, -74, -37, -19, -10, -5, -3, -2, -1, -294, -147, -74, -37, -19, 
     -10, -5, -3, -2, -1, -293, -147, -74, -37, -19, -10, -5, -3, -2, -1, -292, -146, -73, -37, -19, -10, -5, 
     -3, -2, -1, -291, -146, -73, -37, -19, -10, -5, -3, -2, -1, -290, -145, -73, -37, -19, -10, -5, -3, -2, 
     -1, -289, -145, -73, -37, -19, -10, -5, -3, -2, -1, -288, -144, -72, -36, -18, -9, -5, -3, -2, -1, -287, 
     -144, -72, -36, -18, -9, -5, -3, -2, -1, -286, -143, -72, -36, -18, -9, -5, -3, -2, -1, -285, -143, -72, 
     -36, -18, -9, -5, -3, -2, -1, -284, -142, -71, -36, -18, -9, -5, -3, -2, -1, -283, -142, -71, -36, -18, 
     -9, -5, -3, -2, -1, -282, -141, -71, -36, -18, -9, -5, -3, -2, -1, -281, -141, -71, -36, -18, -9, -5, -3, 
     -2, -1, -280, -140, -70, -35, -18, -9, -5, -3, -2, -1, -279, -140, -70, -35, -18, -9, -5, -3, -2, -1, 
     -278, -139, -70, -35, -18, -9, -5, -3, -2, -1, -277, -139, -70, -35, -18, -9, -5, -3, -2, -1, -276, -138, 
     -69, -35, -18, -9, -5, -3, -2, -1, -275, -138, -69, -35, -18, -9, -5, -3, -2, -1, -274, -137, -69, -35, 
     -18, -9, -5, -3, -2, -1, -273, -137, -69, -35, -18, -9, -5, -3, -2, -1, -272, -136, -68, -34, -17, -9, -5, 
     -3, -2, -1, -271, -136, -68, -34, -17, -9, -5, -3, -2, -1, -270, -135, -68, -34, -17, -9, -5, -3, -2, -1, 
     -269, -135, -68, -34, -17, -9, -5, -3, -2, -1, -268, -134, -67, -34, -17, -9, -5, -3, -2, -1, -267, -134, 
     -67, -34, -17, -9, -5, -3, -2, -1, -266, -133, -67, -34, -17, -9, -5, -3, -2, -1, -265, -133, -67, -34, 
     -17, -9, -5, -3, -2, -1, -264, -132, -66, -33, -17, -9, -5, -3, -2, -1, -263, -132, -66, -33, -17, -9, -5, 
     -3, -2, -1, -262, -131, -66, -33, -17, -9, -5, -3, -2, -1, -261, -131, -66, -33, -17, -9, -5, -3, -2, -1, 
     -260, -130, -65, -33, -17, -9, -5, -3, -2, -1, -259, -130, -65, -33, -17, -9, -5, -3, -2, -1, -258, -129, 
     -65, -33, -17, -9, -5, -3, -2, -1, -257, -129, -65, -33, -17, -9, -5, -3, -2, -1, -256, -128, -64, -32, 
     -16, -8, -4, -2, -1, -1, -255, -128, -64, -32, -16, -8, -4, -2, -1, -1, -254, -127, -64, -32, -16, -8, -4, 
     -2, -1, -1, -253, -127, -64, -32, -16, -8, -4, -2, -1, -1, -252, -126, -63, -32, -16, -8, -4, -2, -1, -1, 
     -251, -126, -63, -32, -16, -8, -4, -2, -1, -1, -250, -125, -63, -32, -16, -8, -4, -2, -1, -1, -249, -125, 
     -63, -32, -16, -8, -4, -2, -1, -1, -248, -124, -62, -31, -16, -8, -4, -2, -1, -1, -247, -124, -62, -31, 
     -16, -8, -4, -2, -1, -1, -246, -123, -62, -31, -16, -8, -4, -2, -1, -1, -245, -123, -62, -31, -16, -8, -4, 
     -2, -1, -1, -244, -122, -61, -31, -16, -8, -4, -2, -1, -1, -243, -122, -61, -31, -16, -8, -4, -2, -1, -1, 
     -242, -121, -61, -31, -16, -8, -4, -2, -1, -1, -241, -121, -61, -31, -16, -8, -4, -2, -1, -1, -240, -120, 
     -60, -30, -15, -8, -4, -2, -1, -1, -239, -120, -60, -30, -15, -8, -4, -2, -1, -1, -238, -119, -60, -30, 
     -15, -8, -4, -2, -1, -1, -237, -119, -60, -30, -15, -8, -4, -2, -1, -1, -236, -118, -59, -30, -15, -8, -4, 
     -2, -1, -1, -235, -118, -59, -30, -15, -8, -4, -2, -1, -1, -234, -117, -59, -30, -15, -8, -4, -2, -1, -1, 
     -233, -117, -59, -30, -15, -8, -4, -2, -1, -1, -232, -116, -58, -29, -15, -8, -4, -2, -1, -1, -231, -116, 
     -58, -29, -15, -8, -4, -2, -1, -1, -230, -115, -58, -29, -15, -8, -4, -2, -1, -1, -229, -115, -58, -29, 
     -15, -8, -4, -2, -1, -1, -228, -114, -57, -29, -15, -8, -4, -2, -1, -1, -227, -114, -57, -29, -15, -8, -4, 
     -2, -1, -1, -226, -113, -57, -29, -15, -8, -4, -2, -1, -1, -225, -113, -57, -29, -15, -8, -4, -2, -1, -1, 
     -224, -112, -56, -28, -14, -7, -4, -2, -1, -1, -223, -112, -56, -28, -14, -7, -4, -2, -1, -1, -222, -111, 
     -56, -28, -14, -7, -4, -2, -1, -1, -221, -111, -56, -28, -14, -7, -4, -2, -1, -1, -220, -110, -55, -28, 
     -14, -7, -4, -2, -1, -1, -219, -110, -55, -28, -14, -7, -4, -2, -1, -1, -218, -109, -55, -28, -14, -7, -4, 
     -2, -1, -1, -217, -109, -55, -28, -14, -7, -4, -2, -1, -1, -216, -108, -54, -27, -14, -7, -4, -2, -1, -1, 
     -215, -108, -54, -27, -14, -7, -4, -2, -1, -1, -214, -107, -54, -27, -14, -7, -4, -2, -1, -1, -213, -107, 
     -54, -27, -14, -7, -4, -2, -1, -1, -212, -106, -53, -27, -14, -7, -4, -2, -1, -1, -211, -106, -53, -27, 
     -14, -7, -4, -2, -1, -1, -210, -105, -53, -27, -14, -7, -4, -2, -1, -1, -209, -105, -53, -27, -14, -7, -4, 
     -2, -1, -1, -208, -104, -52, -26, -13, -7, -4, -2, -1, -1, -207, -104, -52, -26, -13, -7, -4, -2, -1, -1, 
     -206, -103, -52, -26, -13, -7, -4, -2, -1, -1, -205, -103, -52, -26, -13, -7, -4, -2, -1, -1, -204, -102, 
     -51, -26, -13, -7, -4, -2, -1, -1, -203, -102, -51, -26, -13, -7, -4, -2, -1, -1, -202, -101, -51, -26, 
     -13, -7, -4, -2, -1, -1, -201, -101, -51, -26, -13, -7, -4, -2, -1, -1, -200, -100, -50, -25, -13, -7, -4, 
     -2, -1, -1, -199, -100, -50, -25, -13, -7, -4, -2, -1, -1, -198, -99, -50, -25, -13, -7, -4, -2, -1, -1, 
     -197, -99, -50, -25, -13, -7, -4, -2, -1, -1, -196, -98, -49, -25, -13, -7, -4, -2, -1, -1, -195, -98, 
     -49, -25, -13, -7, -4, -2, -1, -1, -194, -97, -49, -25, -13, -7, -4, -2, -1, -1, -193, -97, -49, -25, -13, 
     -7, -4, -2, -1, -1, -192, -96, -48, -24, -12, -6, -3, -2, -1, -1, -191, -96, -48, -24, -12, -6, -3, -2, 
     -1, -1, -190, -95, -48, -24, -12, -6, -3, -2, -1, -1, -189, -95, -48, -24, -12, -6, -3, -2, -1, -1, -188, 
     -94, -47, -24, -12, -6, -3, -2, -1, -1, -187, -94, -47, -24, -12, -6, -3, -2, -1, -1, -186, -93, -47, -24, 
     -12, -6, -3, -2, -1, -1, -185, -93, -47, -24, -12, -6, -3, -2, -1, -1, -184, -92, -46, -23, -12, -6, -3, 
     -2, -1, -1, -183, -92, -46, -23, -12, -6, -3, -2, -1, -1, -182, -91, -46, -23, -12, -6, -3, -2, -1, -1, 
     -181, -91, -46, -23, -12, -6, -3, -2, -1, -1, -180, -90, -45, -23, -12, -6, -3, -2, -1, -1, -179, -90, 
     -45, -23, -12, -6, -3, -2, -1, -1, -178, -89, -45, -23, -12, -6, -3, -2, -1, -1, -177, -89, -45, -23, -12, 
     -6, -3, -2, -1, -1, -176, -88, -44, -22, -11, -6, -3, -2, -1, -1, -175, -88, -44, -22, -11, -6, -3, -2, 
     -1, -1, -174, -87, -44, -22, -11, -6, -3, -2, -1, -1, -173, -87, -44, -22, -11, -6, -3, -2, -1, -1, -172, 
     -86, -43, -22, -11, -6, -3, -2, -1, -1, -171, -86, -43, -22, -11, -6, -3, -2, -1, -1, -170, -85, -43, -22, 
     -11, -6, -3, -2, -1, -1, -169, -85, -43, -22, -11, -6, -3, -2, -1, -1, -168, -84, -42, -21, -11, -6, -3, 
     -2, -1, -1, -167, -84, -42, -21, -11, -6, -3, -2, -1, -1, -166, -83, -42, -21, -11, -6, -3, -2, -1, -1, 
     -165, -83, -42, -21, -11, -6, -3, -2, -1, -1, -164, -82, -41, -21, -11, -6, -3, -2, -1, -1, -163, -82, 
     -41, -21, -11, -6, -3, -2, -1, -1, -162, -81, -41, -21, -11, -6, -3, -2, -1, -1, -161, -81, -41, -21, -11, 
     -6, -3, -2, -1, -1, -160, -80, -40, -20, -10, -5, -3, -2, -1, -1, -159, -80, -40, -20, -10, -5, -3, -2, 
     -1, -1, -158, -79, -40, -20, -10, -5, -3, -2, -1, -1, -157, -79, -40, -20, -10, -5, -3, -2, -1, -1, -156, 
     -78, -39, -20, -10, -5, -3, -2, -1, -1, -155, -78, -39, -20, -10, -5, -3, -2, -1, -1, -154, -77, -39, -20, 
     -10, -5, -3, -2, -1, -1, -153, -77, -39, -20, -10, -5, -3, -2, -1, -1, -152, -76, -38, -19, -10, -5, -3, 
     -2, -1, -1, -151, -76, -38, -19, -10, -5, -3, -2, -1, -1, -150, -75, -38, -19, -10, -5, -3, -2, -1, -1, 
     -149, -75, -38, -19, -10, -5, -3, -2, -1, -1, -148, -74, -37, -19, -10, -5, -3, -2, -1, -1, -147, -74, 
     -37, -19, -10, -5, -3, -2, -1, -1, -146, -73, -37, -19, -10, -5, -3, -2, -1, -1, -145, -73, -37, -19, -10, 
     -5, -3, -2, -1, -1, -144, -72, -36, -18, -9, -5, -3, -2, -1, -1, -143, -72, -36, -18, -9, -5, -3, -2, -1, 
     -1, -142, -71, -36, -18, -9, -5, -3, -2, -1, -1, -141, -71, -36, -18, -9, -5, -3, -2, -1, -1, -140, -70, 
     -35, -18, -9, -5, -3, -2, -1, -1, -139, -70, -35, -18, -9, -5, -3, -2, -1, -1, -138, -69, -35, -18, -9, 
     -5, -3, -2, -1, -1, -137, -69, -35, -18, -9, -5, -3, -2, -1, -1, -136, -68, -34, -17, -9, -5, -3, -2, -1, 
     -1, -135, -68, -34, -17, -9, -5, -3, -2, -1, -1, -134, -67, -34, -17, -9, -5, -3, -2, -1, -1, -133, -67, 
     -34, -17, -9, -5, -3, -2, -1, -1, -132, -66, -33, -17, -9, -5, -3, -2, -1, -1, -131, -66, -33, -17, -9, 
     -5, -3, -2, -1, -1, -130, -65, -33, -17, -9, -5, -3, -2, -1, -1, -129, -65, -33, -17, -9, -5, -3, -2, -1, 
     -1, -128, -64, -32, -16, -8, -4, -2, -1, -1, -1, -127, -64, -32, -16, -8, -4, -2, -1, -1, -1, -126, -63, 
     -32, -16, -8, -4, -2, -1, -1, -1, -125, -63, -32, -16, -8, -4, -2, -1, -1, -1, -124, -62, -31, -16, -8, 
     -4, -2, -1, -1, -1, -123, -62, -31, -16, -8, -4, -2, -1, -1, -1, -122, -61, -31, -16, -8, -4, -2, -1, -1, 
     -1, -121, -61, -31, -16, -8, -4, -2, -1, -1, -1, -120, -60, -30, -15, -8, -4, -2, -1, -1, -1, -119, -60, 
     -30, -15, -8, -4, -2, -1, -1, -1, -118, -59, -30, -15, -8, -4, -2, -1, -1, -1, -117, -59, -30, -15, -8, 
     -4, -2, -1, -1, -1, -116, -58, -29, -15, -8, -4, -2, -1, -1, -1, -115, -58, -29, -15, -8, -4, -2, -1, -1, 
     -1, -114, -57, -29, -15, -8, -4, -2, -1, -1, -1, -113, -57, -29, -15, -8, -4, -2, -1, -1, -1, -112, -56, 
     -28, -14, -7, -4, -2, -1, -1, -1, -111, -56, -28, -14, -7, -4, -2, -1, -1, -1, -110, -55, -28, -14, -7, 
     -4, -2, -1, -1, -1, -109, -55, -28, -14, -7, -4, -2, -1, -1, -1, -108, -54, -27, -14, -7, -4, -2, -1, -1, 
     -1, -107, -54, -27, -14, -7, -4, -2, -1, -1, -1, -106, -53, -27, -14, -7, -4, -2, -1, -1, -1, -105, -53, 
     -27, -14, -7, -4, -2, -1, -1, -1, -104, -52, -26, -13, -7, -4, -2, -1, -1, -1, -103, -52, -26, -13, -7, 
     -4, -2, -1, -1, -1, -102, -51, -26, -13, -7, -4, -2, -1, -1, -1, -101, -51, -26, -13, -7, -4, -2, -1, -1, 
     -1, -100, -50, -25, -13, -7, -4, -2, -1, -1, -1, -99, -50, -25, -13, -7, -4, -2, -1, -1, -1, -98, -49, 
     -25, -13, -7, -4, -2, -1, -1, -1, -97, -49, -25, -13, -7, -4, -2, -1, -1, -1, -96, -48, -24, -12, -6, -3, 
     -2, -1, -1, -1, -95, -48, -24, -12, -6, -3, -2, -1, -1, -1, -94, -47, -24, -12, -6, -3, -2, -1, -1, -1, 
     -93, -47, -24, -12, -6, -3, -2, -1, -1, -1, -92, -46, -23, -12, -6, -3, -2, -1, -1, -1, -91, -46, -23, 
     -12, -6, -3, -2, -1, -1, -1, -90, -45, -23, -12, -6, -3, -2, -1, -1, -1, -89, -45, -23, -12, -6, -3, -2, 
     -1, -1, -1, -88, -44, -22, -11, -6, -3, -2, -1, -1, -1, -87, -44, -22, -11, -6, -3, -2, -1, -1, -1, -86, 
     -43, -22, -11, -6, -3, -2, -1, -1, -1, -85, -43, -22, -11, -6, -3, -2, -1, -1, -1, -84, -42, -21, -11, -6, 
     -3, -2, -1, -1, -1, -83, -42, -21, -11, -6, -3, -2, -1, -1, -1, -82, -41, -21, -11, -6, -3, -2, -1, -1, 
     -1, -81, -41, -21, -11, -6, -3, -2, -1, -1, -1, -80, -40, -20, -10, -5, -3, -2, -1, -1, -1, -79, -40, -20, 
     -10, -5, -3, -2, -1, -1, -1, -78, -39, -20, -10, -5, -3, -2, -1, -1, -1, -77, -39, -20, -10, -5, -3, -2, 
     -1, -1, -1, -76, -38, -19, -10, -5, -3, -2, -1, -1, -1, -75, -38, -19, -10, -5, -3, -2, -1, -1, -1, -74, 
     -37, -19, -10, -5, -3, -2, -1, -1, -1, -73, -37, -19, -10, -5, -3, -2, -1, -1, -1, -72, -36, -18, -9, -5, 
     -3, -2, -1, -1, -1, -71, -36, -18, -9, -5, -3, -2, -1, -1, -1, -70, -35, -18, -9, -5, -3, -2, -1, -1, -1, 
     -69, -35, -18, -9, -5, -3, -2, -1, -1, -1, -68, -34, -17, -9, -5, -3, -2, -1, -1, -1, -67, -34, -17, -9, 
     -5, -3, -2, -1, -1, -1, -66, -33, -17, -9, -5, -3, -2, -1, -1, -1, -65, -33, -17, -9, -5, -3, -2, -1, -1, 
     -1, -64, -32, -16, -8, -4, -2, -1, -1, -1, -1, -63, -32, -16, -8, -4, -2, -1, -1, -1, -1, -62, -31, -16, 
     -8, -4, -2, -1, -1, -1, -1, -61, -31, -16, -8, -4, -2, -1, -1, -1, -1, -60, -30, -15, -8, -4, -2, -1, -1, 
     -1, -1, -59, -30, -15, -8, -4, -2, -1, -1, -1, -1, -58, -29, -15, -8, -4, -2, -1, -1, -1, -1, -57, -29, 
     -15, -8, -4, -2, -1, -1, -1, -1, -56, -28, -14, -7, -4, -2, -1, -1, -1, -1, -55, -28, -14, -7, -4, -2, -1, 
     -1, -1, -1, -54, -27, -14, -7, -4, -2, -1, -1, -1, -1, -53, -27, -14, -7, -4, -2, -1, -1, -1, -1, -52, 
     -26, -13, -7, -4, -2, -1, -1, -1, -1, -51, -26, -13, -7, -4, -2, -1, -1, -1, -1, -50, -25, -13, -7, -4, 
     -2, -1, -1, -1, -1, -49, -25, -13, -7, -4, -2, -1, -1, -1, -1, -48, -24, -12, -6, -3, -2, -1, -1, -1, -1, 
     -47, -24, -12, -6, -3, -2, -1, -1, -1, -1, -46, -23, -12, -6, -3, -2, -1, -1, -1, -1, -45, -23, -12, -6, 
     -3, -2, -1, -1, -1, -1, -44, -22, -11, -6, -3, -2, -1, -1, -1, -1, -43, -22, -11, -6, -3, -2, -1, -1, -1, 
     -1, -42, -21, -11, -6, -3, -2, -1, -1, -1, -1, -41, -21, -11, -6, -3, -2, -1, -1, -1, -1, -40, -20, -10, 
     -5, -3, -2, -1, -1, -1, -1, -39, -20, -10, -5, -3, -2, -1, -1, -1, -1, -38, -19, -10, -5, -3, -2, -1, -1, 
     -1, -1, -37, -19, -10, -5, -3, -2, -1, -1, -1, -1, -36, -18, -9, -5, -3, -2, -1, -1, -1, -1, -35, -18, -9, 
     -5, -3, -2, -1, -1, -1, -1, -34, -17, -9, -5, -3, -2, -1, -1, -1, -1, -33, -17, -9, -5, -3, -2, -1, -1, 
     -1, -1, -32, -16, -8, -4, -2, -1, -1, -1, -1, -1, -31, -16, -8, -4, -2, -1, -1, -1, -1, -1, -30, -15, -8, 
     -4, -2, -1, -1, -1, -1, -1, -29, -15, -8, -4, -2, -1, -1, -1, -1, -1, -28, -14, -7, -4, -2, -1, -1, -1, 
     -1, -1, -27, -14, -7, -4, -2, -1, -1, -1, -1, -1, -26, -13, -7, -4, -2, -1, -1, -1, -1, -1, -25, -13, -7, 
     -4, -2, -1, -1, -1, -1, -1, -24, -12, -6, -3, -2, -1, -1, -1, -1, -1, -23, -12, -6, -3, -2, -1, -1, -1, 
     -1, -1, -22, -11, -6, -3, -2, -1, -1, -1, -1, -1, -21, -11, -6, -3, -2, -1, -1, -1, -1, -1, -20, -10, -5, 
     -3, -2, -1, -1, -1, -1, -1, -19, -10, -5, -3, -2, -1, -1, -1, -1, -1, -18, -9, -5, -3, -2, -1, -1, -1, -1, 
     -1, -17, -9, -5, -3, -2, -1, -1, -1, -1, -1, -16, -8, -4, -2, -1, -1, -1, -1, -1, -1, -15, -8, -4, -2, -1, 
     -1, -1, -1, -1, -1, -14, -7, -4, -2, -1, -1, -1, -1, -1, -1, -13, -7, -4, -2, -1, -1, -1, -1, -1, -1, -12, 
     -6, -3, -2, -1, -1, -1, -1, -1, -1, -11, -6, -3, -2, -1, -1, -1, -1, -1, -1, -10, -5, -3, -2, -1, -1, -1, 
     -1, -1, -1, -9, -5, -3, -2, -1, -1, -1, -1, -1, -1, -8, -4, -2, -1, -1, -1, -1, -1, -1, -1, -7, -4, -2, 
     -1, -1, -1, -1, -1, -1, -1, -6, -3, -2, -1, -1, -1, -1, -1, -1, -1, -5, -3, -2, -1, -1, -1, -1, -1, -1, 
     -1, -4, -2, -1, -1, -1, -1, -1, -1, -1, -1, -3, -2, -1, -1, -1, -1, -1, -1, -1, -1, -2, -1, -1, -1, -1, 
     -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 
     0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2, 1, 0, 0, 0, 0, 0, 0, 0, 
     5, 2, 1, 0, 0, 0, 0, 0, 0, 0, 6, 3, 1, 0, 0, 0, 0, 0, 0, 0, 7, 3, 1, 0, 0, 0, 0, 0, 0, 0, 8, 4, 2, 1, 0, 
     0, 0, 0, 0, 0, 9, 4, 2, 1, 0, 0, 0, 0, 0, 0, 10, 5, 2, 1, 0, 0, 0, 0, 0, 0, 11, 5, 2, 1, 0, 0, 0, 0, 0, 0, 
     12, 6, 3, 1, 0, 0, 0, 0, 0, 0, 13, 6, 3, 1, 0, 0, 0, 0, 0, 0, 14, 7, 3, 1, 0, 0, 0, 0, 0, 0, 15, 7, 3, 1, 
     0, 0, 0, 0, 0, 0, 16, 8, 4, 2, 1, 0, 0, 0, 0, 0, 17, 8, 4, 2, 1, 0, 0, 0, 0, 0, 18, 9, 4, 2, 1, 0, 0, 0, 
     0, 0, 19, 9, 4, 2, 1, 0, 0, 0, 0, 0, 20, 10, 5, 2, 1, 0, 0, 0, 0, 0, 21, 10, 5, 2, 1, 0, 0, 0, 0, 0, 22, 
     11, 5, 2, 1, 0, 0, 0, 0, 0, 23, 11, 5, 2, 1, 0, 0, 0, 0, 0, 24, 12, 6, 3, 1, 0, 0, 0, 0, 0, 25, 12, 6, 3, 
     1, 0, 0, 0, 0, 0, 26, 13, 6, 3, 1, 0, 0, 0, 0, 0, 27, 13, 6, 3, 1, 0, 0, 0, 0, 0, 28, 14, 7, 3, 1, 0, 0, 
     0, 0, 0, 29, 14, 7, 3, 1, 0, 0, 0, 0, 0, 30, 15, 7, 3, 1, 0, 0, 0, 0, 0, 31, 15, 7, 3, 1, 0, 0, 0, 0, 0, 
     32, 16, 8, 4, 2, 1, 0, 0, 0, 0, 33, 16, 8, 4, 2, 1, 0, 0, 0, 0, 34, 17, 8, 4, 2, 1, 0, 0, 0, 0, 35, 17, 8, 
     4, 2, 1, 0, 0, 0, 0, 36, 18, 9, 4, 2, 1, 0, 0, 0, 0, 37, 18, 9, 4, 2, 1, 0, 0, 0, 0, 38, 19, 9, 4, 2, 1, 
     0, 0, 0, 0, 39, 19, 9, 4, 2, 1, 0, 0, 0, 0, 40, 20, 10, 5, 2, 1, 0, 0, 0, 0, 41, 20, 10, 5, 2, 1, 0, 0, 0, 
     0, 42, 21, 10, 5, 2, 1, 0, 0, 0, 0, 43, 21, 10, 5, 2, 1, 0, 0, 0, 0, 44, 22, 11, 5, 2, 1, 0, 0, 0, 0, 45, 
     22, 11, 5, 2, 1, 0, 0, 0, 0, 46, 23, 11, 5, 2, 1, 0, 0, 0, 0, 47, 23, 11, 5, 2, 1, 0, 0, 0, 0, 48, 24, 12, 
     6, 3, 1, 0, 0, 0, 0, 49, 24, 12, 6, 3, 1, 0, 0, 0, 0, 50, 25, 12, 6, 3, 1, 0, 0, 0, 0, 51, 25, 12, 6, 3, 
     1, 0, 0, 0, 0, 52, 26, 13, 6, 3, 1, 0, 0, 0, 0, 53, 26, 13, 6, 3, 1, 0, 0, 0, 0, 54, 27, 13, 6, 3, 1, 0, 
     0, 0, 0, 55, 27, 13, 6, 3, 1, 0, 0, 0, 0, 56, 28, 14, 7, 3, 1, 0, 0, 0, 0, 57, 28, 14, 7, 3, 1, 0, 0, 0, 
     0, 58, 29, 14, 7, 3, 1, 0, 0, 0, 0, 59, 29, 14, 7, 3, 1, 0, 0, 0, 0, 60, 30, 15, 7, 3, 1, 0, 0, 0, 0, 61, 
     30, 15, 7, 3, 1, 0, 0, 0, 0, 62, 31, 15, 7, 3, 1, 0, 0, 0, 0, 63, 31, 15, 7, 3, 1, 0, 0, 0, 0, 64, 32, 16, 
     8, 4, 2, 1, 0, 0, 0, 65, 32, 16, 8, 4, 2, 1, 0, 0, 0, 66, 33, 16, 8, 4, 2, 1, 0, 0, 0, 67, 33, 16, 8, 4, 
     2, 1, 0, 0, 0, 68, 34, 17, 8, 4, 2, 1, 0, 0, 0, 69, 34, 17, 8, 4, 2, 1, 0, 0, 0, 70, 35, 17, 8, 4, 2, 1, 
     0, 0, 0, 71, 35, 17, 8, 4, 2, 1, 0, 0, 0, 72, 36, 18, 9, 4, 2, 1, 0, 0, 0, 73, 36, 18, 9, 4, 2, 1, 0, 0, 
     0, 74, 37, 18, 9, 4, 2, 1, 0, 0, 0, 75, 37, 18, 9, 4, 2, 1, 0, 0, 0, 76, 38, 19, 9, 4, 2, 1, 0, 0, 0, 77, 
     38, 19, 9, 4, 2, 1, 0, 0, 0, 78, 39, 19, 9, 4, 2, 1, 0, 0, 0, 79, 39, 19, 9, 4, 2, 1, 0, 0, 0, 80, 40, 20, 
     10, 5, 2, 1, 0, 0, 0, 81, 40, 20, 10, 5, 2, 1, 0, 0, 0, 82, 41, 20, 10, 5, 2, 1, 0, 0, 0, 83, 41, 20, 10, 
     5, 2, 1, 0, 0, 0, 84, 42, 21, 10, 5, 2, 1, 0, 0, 0, 85, 42, 21, 10, 5, 2, 1, 0, 0, 0, 86, 43, 21, 10, 5, 
     2, 1, 0, 0, 0, 87, 43, 21, 10, 5, 2, 1, 0, 0, 0, 88, 44, 22, 11, 5, 2, 1, 0, 0, 0, 89, 44, 22, 11, 5, 2, 
     1, 0, 0, 0, 90, 45, 22, 11, 5, 2, 1, 0, 0, 0, 91, 45, 22, 11, 5, 2, 1, 0, 0, 0, 92, 46, 23, 11, 5, 2, 1, 
     0, 0, 0, 93, 46, 23, 11, 5, 2, 1, 0, 0, 0, 94, 47, 23, 11, 5, 2, 1, 0, 0, 0, 95, 47, 23, 11, 5, 2, 1, 0, 
     0, 0, 96, 48, 24, 12, 6, 3, 1, 0, 0, 0, 97, 48, 24, 12, 6, 3, 1, 0, 0, 0, 98, 49, 24, 12, 6, 3, 1, 0, 0, 
     0, 99, 49, 24, 12, 6, 3, 1, 0, 0, 0, 100, 50, 25, 12, 6, 3, 1, 0, 0, 0, 101, 50, 25, 12, 6, 3, 1, 0, 0, 0, 
     102, 51, 25, 12, 6, 3, 1, 0, 0, 0, 103, 51, 25, 12, 6, 3, 1, 0, 0, 0, 104, 52, 26, 13, 6, 3, 1, 0, 0, 0, 
     105, 52, 26, 13, 6, 3, 1, 0, 0, 0, 106, 53, 26, 13, 6, 3, 1, 0, 0, 0, 107, 53, 26, 13, 6, 3, 1, 0, 0, 0, 
     108, 54, 27, 13, 6, 3, 1, 0, 0, 0, 109, 54, 27, 13, 6, 3, 1, 0, 0, 0, 110, 55, 27, 13, 6, 3, 1, 0, 0, 0, 
     111, 55, 27, 13, 6, 3, 1, 0, 0, 0, 112, 56, 28, 14, 7, 3, 1, 0, 0, 0, 113, 56, 28, 14, 7, 3, 1, 0, 0, 0, 
     114, 57, 28, 14, 7, 3, 1, 0, 0, 0, 115, 57, 28, 14, 7, 3, 1, 0, 0, 0, 116, 58, 29, 14, 7, 3, 1, 0, 0, 0, 
     117, 58, 29, 14, 7, 3, 1, 0, 0, 0, 118, 59, 29, 14, 7, 3, 1, 0, 0, 0, 119, 59, 29, 14, 7, 3, 1, 0, 0, 0, 
     120, 60, 30, 15, 7, 3, 1, 0, 0, 0, 121, 60, 30, 15, 7, 3, 1, 0, 0, 0, 122, 61, 30, 15, 7, 3, 1, 0, 0, 0, 
     123, 61, 30, 15, 7, 3, 1, 0, 0, 0, 124, 62, 31, 15, 7, 3, 1, 0, 0, 0, 125, 62, 31, 15, 7, 3, 1, 0, 0, 0, 
     126, 63, 31, 15, 7, 3, 1, 0, 0, 0, 127, 63, 31, 15, 7, 3, 1, 0, 0, 0, 128, 64, 32, 16, 8, 4, 2, 1, 0, 0, 
     129, 64, 32, 16, 8, 4, 2, 1, 0, 0, 130, 65, 32, 16, 8, 4, 2, 1, 0, 0, 131, 65, 32, 16, 8, 4, 2, 1, 0, 0, 
     132, 66, 33, 16, 8, 4, 2, 1, 0, 0, 133, 66, 33, 16, 8, 4, 2, 1, 0, 0, 134, 67, 33, 16, 8, 4, 2, 1, 0, 0, 
     135, 67, 33, 16, 8, 4, 2, 1, 0, 0, 136, 68, 34, 17, 8, 4, 2, 1, 0, 0, 137, 68, 34, 17, 8, 4, 2, 1, 0, 0, 
     138, 69, 34, 17, 8, 4, 2, 1, 0, 0, 139, 69, 34, 17, 8, 4, 2, 1, 0, 0, 140, 70, 35, 17, 8, 4, 2, 1, 0, 0, 
     141, 70, 35, 17, 8, 4, 2, 1, 0, 0, 142, 71, 35, 17, 8, 4, 2, 1, 0, 0, 143, 71, 35, 17, 8, 4, 2, 1, 0, 0, 
     144, 72, 36, 18, 9, 4, 2, 1, 0, 0, 145, 72, 36, 18, 9, 4, 2, 1, 0, 0, 146, 73, 36, 18, 9, 4, 2, 1, 0, 0, 
     147, 73, 36, 18, 9, 4, 2, 1, 0, 0, 148, 74, 37, 18, 9, 4, 2, 1, 0, 0, 149, 74, 37, 18, 9, 4, 2, 1, 0, 0, 
     150, 75, 37, 18, 9, 4, 2, 1, 0, 0, 151, 75, 37, 18, 9, 4, 2, 1, 0, 0, 152, 76, 38, 19, 9, 4, 2, 1, 0, 0, 
     153, 76, 38, 19, 9, 4, 2, 1, 0, 0, 154, 77, 38, 19, 9, 4, 2, 1, 0, 0, 155, 77, 38, 19, 9, 4, 2, 1, 0, 0, 
     156, 78, 39, 19, 9, 4, 2, 1, 0, 0, 157, 78, 39, 19, 9, 4, 2, 1, 0, 0, 158, 79, 39, 19, 9, 4, 2, 1, 0, 0, 
     159, 79, 39, 19, 9, 4, 2, 1, 0, 0, 160, 80, 40, 20, 10, 5, 2, 1, 0, 0, 161, 80, 40, 20, 10, 5, 2, 1, 0, 0, 
     162, 81, 40, 20, 10, 5, 2, 1, 0, 0, 163, 81, 40, 20, 10, 5, 2, 1, 0, 0, 164, 82, 41, 20, 10, 5, 2, 1, 0, 
     0, 165, 82, 41, 20, 10, 5, 2, 1, 0, 0, 166, 83, 41, 20, 10, 5, 2, 1, 0, 0, 167, 83, 41, 20, 10, 5, 2, 1, 
     0, 0, 168, 84, 42, 21, 10, 5, 2, 1, 0, 0, 169, 84, 42, 21, 10, 5, 2, 1, 0, 0, 170, 85, 42, 21, 10, 5, 2, 
     1, 0, 0, 171, 85, 42, 21, 10, 5, 2, 1, 0, 0, 172, 86, 43, 21, 10, 5, 2, 1, 0, 0, 173, 86, 43, 21, 10, 5, 
     2, 1, 0, 0, 174, 87, 43, 21, 10, 5, 2, 1, 0, 0, 175, 87, 43, 21, 10, 5, 2, 1, 0, 0, 176, 88, 44, 22, 11, 
     5, 2, 1, 0, 0, 177, 88, 44, 22, 11, 5, 2, 1, 0, 0, 178, 89, 44, 22, 11, 5, 2, 1, 0, 0, 179, 89, 44, 22, 
     11, 5, 2, 1, 0, 0, 180, 90, 45, 22, 11, 5, 2, 1, 0, 0, 181, 90, 45, 22, 11, 5, 2, 1, 0, 0, 182, 91, 45, 
     22, 11, 5, 2, 1, 0, 0, 183, 91, 45, 22, 11, 5, 2, 1, 0, 0, 184, 92, 46, 23, 11, 5, 2, 1, 0, 0, 185, 92, 
     46, 23, 11, 5, 2, 1, 0, 0, 186, 93, 46, 23, 11, 5, 2, 1, 0, 0, 187, 93, 46, 23, 11, 5, 2, 1, 0, 0, 188, 
     94, 47, 23, 11, 5, 2, 1, 0, 0, 189, 94, 47, 23, 11, 5, 2, 1, 0, 0, 190, 95, 47, 23, 11, 5, 2, 1, 0, 0, 
     191, 95, 47, 23, 11, 5, 2, 1, 0, 0, 192, 96, 48, 24, 12, 6, 3, 1, 0, 0, 193, 96, 48, 24, 12, 6, 3, 1, 0, 
     0, 194, 97, 48, 24, 12, 6, 3, 1, 0, 0, 195, 97, 48, 24, 12, 6, 3, 1, 0, 0, 196, 98, 49, 24, 12, 6, 3, 1, 
     0, 0, 197, 98, 49, 24, 12, 6, 3, 1, 0, 0, 198, 99, 49, 24, 12, 6, 3, 1, 0, 0, 199, 99, 49, 24, 12, 6, 3, 
     1, 0, 0, 200, 100, 50, 25, 12, 6, 3, 1, 0, 0, 201, 100, 50, 25, 12, 6, 3, 1, 0, 0, 202, 101, 50, 25, 12, 
     6, 3, 1, 0, 0, 203, 101, 50, 25, 12, 6, 3, 1, 0, 0, 204, 102, 51, 25, 12, 6, 3, 1, 0, 0, 205, 102, 51, 25, 
     12, 6, 3, 1, 0, 0, 206, 103, 51, 25, 12, 6, 3, 1, 0, 0, 207, 103, 51, 25, 12, 6, 3, 1, 0, 0, 208, 104, 52, 
     26, 13, 6, 3, 1, 0, 0, 209, 104, 52, 26, 13, 6, 3, 1, 0, 0, 210, 105, 52, 26, 13, 6, 3, 1, 0, 0, 211, 105, 
     52, 26, 13, 6, 3, 1, 0, 0, 212, 106, 53, 26, 13, 6, 3, 1, 0, 0, 213, 106, 53, 26, 13, 6, 3, 1, 0, 0, 214, 
     107, 53, 26, 13, 6, 3, 1, 0, 0, 215, 107, 53, 26, 13, 6, 3, 1, 0, 0, 216, 108, 54, 27, 13, 6, 3, 1, 0, 0, 
     217, 108, 54, 27, 13, 6, 3, 1, 0, 0, 218, 109, 54, 27, 13, 6, 3, 1, 0, 0, 219, 109, 54, 27, 13, 6, 3, 1, 
     0, 0, 220, 110, 55, 27, 13, 6, 3, 1, 0, 0, 221, 110, 55, 27, 13, 6, 3, 1, 0, 0, 222, 111, 55, 27, 13, 6, 
     3, 1, 0, 0, 223, 111, 55, 27, 13, 6, 3, 1, 0, 0, 224, 112, 56, 28, 14, 7, 3, 1, 0, 0, 225, 112, 56, 28, 
     14, 7, 3, 1, 0, 0, 226, 113, 56, 28, 14, 7, 3, 1, 0, 0, 227, 113, 56, 28, 14, 7, 3, 1, 0, 0, 228, 114, 57, 
     28, 14, 7, 3, 1, 0, 0, 229, 114, 57, 28, 14, 7, 3, 1, 0, 0, 230, 115, 57, 28, 14, 7, 3, 1, 0, 0, 231, 115, 
     57, 28, 14, 7, 3, 1, 0, 0, 232, 116, 58, 29, 14, 7, 3, 1, 0, 0, 233, 116, 58, 29, 14, 7, 3, 1, 0, 0, 234, 
     117, 58, 29, 14, 7, 3, 1, 0, 0, 235, 117, 58, 29, 14, 7, 3, 1, 0, 0, 236, 118, 59, 29, 14, 7, 3, 1, 0, 0, 
     237, 118, 59, 29, 14, 7, 3, 1, 0, 0, 238, 119, 59, 29, 14, 7, 3, 1, 0, 0, 239, 119, 59, 29, 14, 7, 3, 1, 
     0, 0, 240, 120, 60, 30, 15, 7, 3, 1, 0, 0, 241, 120, 60, 30, 15, 7, 3, 1, 0, 0, 242, 121, 60, 30, 15, 7, 
     3, 1, 0, 0, 243, 121, 60, 30, 15, 7, 3, 1, 0, 0, 244, 122, 61, 30, 15, 7, 3, 1, 0, 0, 245, 122, 61, 30, 
     15, 7, 3, 1, 0, 0, 246, 123, 61, 30, 15, 7, 3, 1, 0, 0, 247, 123, 61, 30, 15, 7, 3, 1, 0, 0, 248, 124, 62, 
     31, 15, 7, 3, 1, 0, 0, 249, 124, 62, 31, 15, 7, 3, 1, 0, 0, 250, 125, 62, 31, 15, 7, 3, 1, 0, 0, 251, 125, 
     62, 31, 15, 7, 3, 1, 0, 0, 252, 126, 63, 31, 15, 7, 3, 1, 0, 0, 253, 126, 63, 31, 15, 7, 3, 1, 0, 0, 254, 
     127, 63, 31, 15, 7, 3, 1, 0, 0, 255, 127, 63, 31, 15, 7, 3, 1, 0, 0, 256, 128, 64, 32, 16, 8, 4, 2, 1, 0, 
     257, 128, 64, 32, 16, 8, 4, 2, 1, 0, 258, 129, 64, 32, 16, 8, 4, 2, 1, 0, 259, 129, 64, 32, 16, 8, 4, 2, 
     1, 0, 260, 130, 65, 32, 16, 8, 4, 2, 1, 0, 261, 130, 65, 32, 16, 8, 4, 2, 1, 0, 262, 131, 65, 32, 16, 8, 
     4, 2, 1, 0, 263, 131, 65, 32, 16, 8, 4, 2, 1, 0, 264, 132, 66, 33, 16, 8, 4, 2, 1, 0, 265, 132, 66, 33, 
     16, 8, 4, 2, 1, 0, 266, 133, 66, 33, 16, 8, 4, 2, 1, 0, 267, 133, 66, 33, 16, 8, 4, 2, 1, 0, 268, 134, 67, 
     33, 16, 8, 4, 2, 1, 0, 269, 134, 67, 33, 16, 8, 4, 2, 1, 0, 270, 135, 67, 33, 16, 8, 4, 2, 1, 0, 271, 135, 
     67, 33, 16, 8, 4, 2, 1, 0, 272, 136, 68, 34, 17, 8, 4, 2, 1, 0, 273, 136, 68, 34, 17, 8, 4, 2, 1, 0, 274, 
     137, 68, 34, 17, 8, 4, 2, 1, 0, 275, 137, 68, 34, 17, 8, 4, 2, 1, 0, 276, 138, 69, 34, 17, 8, 4, 2, 1, 0, 
     277, 138, 69, 34, 17, 8, 4, 2, 1, 0, 278, 139, 69, 34, 17, 8, 4, 2, 1, 0, 279, 139, 69, 34, 17, 8, 4, 2, 
     1, 0, 280, 140, 70, 35, 17, 8, 4, 2, 1, 0, 281, 140, 70, 35, 17, 8, 4, 2, 1, 0, 282, 141, 70, 35, 17, 8, 
     4, 2, 1, 0, 283, 141, 70, 35, 17, 8, 4, 2, 1, 0, 284, 142, 71, 35, 17, 8, 4, 2, 1, 0, 285, 142, 71, 35, 
     17, 8, 4, 2, 1, 0, 286, 143, 71, 35, 17, 8, 4, 2, 1, 0, 287, 143, 71, 35, 17, 8, 4, 2, 1, 0, 288, 144, 72, 
     36, 18, 9, 4, 2, 1, 0, 289, 144, 72, 36, 18, 9, 4, 2, 1, 0, 290, 145, 72, 36, 18, 9, 4, 2, 1, 0, 291, 145, 
     72, 36, 18, 9, 4, 2, 1, 0, 292, 146, 73, 36, 18, 9, 4, 2, 1, 0, 293, 146, 73, 36, 18, 9, 4, 2, 1, 0, 294, 
     147, 73, 36, 18, 9, 4, 2, 1, 0, 295, 147, 73, 36, 18, 9, 4, 2, 1, 0, 296, 148, 74, 37, 18, 9, 4, 2, 1, 0, 
     297, 148, 74, 37, 18, 9, 4, 2, 1, 0, 298, 149, 74, 37, 18, 9, 4, 2, 1, 0, 299, 149, 74, 37, 18, 9, 4, 2,
     1, 0, 300, 150, 75, 37, 18, 9, 4, 2, 1, 0);

is @got.elems, @exp.elems, "Right shift cross operator produces correct number of values";
my $i = 0;
while +@exp {
    my $elems = min(+@exp, 32);
    is @got.splice(0, $elems), @exp.splice(0, $elems), "Right shift is two's complement, {$i*32}..{$i++*32+$elems}";
}

# vim: expandtab shiftwidth=4
