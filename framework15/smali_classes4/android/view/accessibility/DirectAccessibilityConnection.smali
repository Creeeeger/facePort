.class Landroid/view/accessibility/DirectAccessibilityConnection;
.super Landroid/accessibilityservice/IAccessibilityServiceConnection$Default;
.source "DirectAccessibilityConnection.java"


# static fields
.field private static final blacklist FETCH_FLAGS:I = 0x180

.field private static final blacklist INTERACTIVE_REGION:Landroid/graphics/Region;


# instance fields
.field private final blacklist mAccessibilityInteractionConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

.field private final blacklist mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final blacklist mMyProcessId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/view/accessibility/DirectAccessibilityConnection;->INTERACTIVE_REGION:Landroid/graphics/Region;

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/accessibility/IAccessibilityInteractionConnection;Landroid/view/accessibility/AccessibilityManager;)V
    .locals 1

    invoke-direct {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Default;-><init>()V

    iput-object p1, p0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityInteractionConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    iput-object p2, p0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/DirectAccessibilityConnection;->mMyProcessId:I

    return-void
.end method


# virtual methods
.method public blacklist findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJLandroid/os/Bundle;)[Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getWindowTransformationSpec(I)Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;

    move-result-object v1

    iget-object v3, v0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityInteractionConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    sget-object v6, Landroid/view/accessibility/DirectAccessibilityConnection;->INTERACTIVE_REGION:Landroid/graphics/Region;

    iget v10, v0, Landroid/view/accessibility/DirectAccessibilityConnection;->mMyProcessId:I

    iget-object v13, v1, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->magnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v14, v1, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->transformationMatrix:[F

    const/16 v9, 0x180

    move-wide/from16 v4, p2

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v11, p7

    move-object/from16 v15, p9

    invoke-interface/range {v3 .. v15}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[FLandroid/os/Bundle;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    return-object v3
.end method

.method public blacklist findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getWindowTransformationSpec(I)Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;

    move-result-object v1

    iget-object v3, v0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityInteractionConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    sget-object v7, Landroid/view/accessibility/DirectAccessibilityConnection;->INTERACTIVE_REGION:Landroid/graphics/Region;

    iget v11, v0, Landroid/view/accessibility/DirectAccessibilityConnection;->mMyProcessId:I

    iget-object v14, v1, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->magnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v15, v1, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->transformationMatrix:[F

    const/16 v10, 0x180

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v12, p7

    invoke-interface/range {v3 .. v15}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    return-object v3
.end method

.method public blacklist findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getWindowTransformationSpec(I)Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;

    move-result-object v1

    iget-object v3, v0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityInteractionConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    sget-object v7, Landroid/view/accessibility/DirectAccessibilityConnection;->INTERACTIVE_REGION:Landroid/graphics/Region;

    iget v11, v0, Landroid/view/accessibility/DirectAccessibilityConnection;->mMyProcessId:I

    iget-object v14, v1, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->magnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v15, v1, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->transformationMatrix:[F

    const/16 v10, 0x180

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v12, p7

    invoke-interface/range {v3 .. v15}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    return-object v3
.end method

.method public blacklist findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getWindowTransformationSpec(I)Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;

    move-result-object v1

    iget-object v3, v0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityInteractionConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    sget-object v7, Landroid/view/accessibility/DirectAccessibilityConnection;->INTERACTIVE_REGION:Landroid/graphics/Region;

    iget v11, v0, Landroid/view/accessibility/DirectAccessibilityConnection;->mMyProcessId:I

    iget-object v14, v1, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->magnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v15, v1, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->transformationMatrix:[F

    const/16 v10, 0x180

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v12, p7

    invoke-interface/range {v3 .. v15}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    return-object v3
.end method

.method public blacklist focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getWindowTransformationSpec(I)Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;

    move-result-object v1

    iget-object v3, v0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityInteractionConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    sget-object v7, Landroid/view/accessibility/DirectAccessibilityConnection;->INTERACTIVE_REGION:Landroid/graphics/Region;

    iget v11, v0, Landroid/view/accessibility/DirectAccessibilityConnection;->mMyProcessId:I

    iget-object v14, v1, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->magnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v15, v1, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->transformationMatrix:[F

    const/16 v10, 0x180

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v12, p7

    invoke-interface/range {v3 .. v15}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    return-object v3
.end method

.method public blacklist performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityInteractionConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    const/16 v8, 0x180

    iget v9, v0, Landroid/view/accessibility/DirectAccessibilityConnection;->mMyProcessId:I

    move-wide v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v10, p8

    invoke-interface/range {v1 .. v11}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    const/4 v1, 0x1

    return v1
.end method
