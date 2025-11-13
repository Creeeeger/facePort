.class public abstract Lcom/android/systemui/deviceentry/shared/FaceAuthReasonKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final apiRequestReasonToUiEvent:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_SWIPE_UP_ON_BOUNCER:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    new-instance v1, Lkotlin/Pair;

    const-string v2, "Face auth due to swipe up on bouncer"

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_UDFPS_POINTER_DOWN:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    new-instance v2, Lkotlin/Pair;

    const-string v3, "Face auth triggered due to finger down on UDFPS"

    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_NOTIFICATION_PANEL_CLICKED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    new-instance v3, Lkotlin/Pair;

    const-string v4, "Face auth due to notification panel click."

    invoke-direct {v3, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_QS_EXPANDED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    new-instance v4, Lkotlin/Pair;

    const-string v5, "Face auth due to QS expansion."

    invoke-direct {v4, v5, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_PICK_UP_GESTURE_TRIGGERED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    new-instance v5, Lkotlin/Pair;

    const-string v6, "Face auth due to pickup gesture triggered when the device is awake and not from AOD."

    invoke-direct {v5, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_ACCESSIBILITY_ACTION:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    new-instance v8, Lkotlin/Pair;

    const-string v6, "Face auth due to an accessibility action."

    invoke-direct {v8, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_RETRY_BUTTON_CLICKED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    new-instance v9, Lkotlin/Pair;

    const-string v6, "Face auth triggered due to retry button click."

    invoke-direct {v9, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_QS_FULLY_EXPANDED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    new-instance v10, Lkotlin/Pair;

    const-string v6, "Face auth because qs is fully expanded"

    invoke-direct {v10, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_LOCKOUT_DEADLINE:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    new-instance v11, Lkotlin/Pair;

    const-string v6, "Face auth started/stopped because PPP lockout deadline is set"

    invoke-direct {v11, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_BIOMETRIC_LOCKOUT_DEADLINE:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    new-instance v12, Lkotlin/Pair;

    const-string v6, "Face auth started/stopped because biometric lockout deadline is set"

    invoke-direct {v12, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_COCKTAIL_BAR_SHOWING_CHANGED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    new-instance v13, Lkotlin/Pair;

    const-string v6, "Face auth started/stopped because cocktail bar showing state is changed"

    invoke-direct {v13, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_SECURE_STATE_UNLOCK_CHANGED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    new-instance v14, Lkotlin/Pair;

    const-string v6, "Face auth started/stopped because secure state unlock is changed"

    invoke-direct {v14, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_SUB_SCREEN:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    new-instance v15, Lkotlin/Pair;

    const-string v6, "Face auth started/stopped because sub screen requests biometrics"

    invoke-direct {v15, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_KEYGUARD_UNLOCKING:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    new-instance v6, Lkotlin/Pair;

    move-object/from16 v16, v15

    const-string v15, "Face auth started/stopped because keyguard is unlocking"

    invoke-direct {v6, v15, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_STOPPED_SESSION_CLOSE:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    new-instance v15, Lkotlin/Pair;

    move-object/from16 v17, v6

    const-string v6, "Face auth stopped because face manager session is closed"

    invoke-direct {v15, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_WINDOW_FOCUS_CHANGED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    new-instance v6, Lkotlin/Pair;

    move-object/from16 v18, v15

    const-string v15, "Face auth started/stopped because window focus is changed"

    invoke-direct {v6, v15, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_STOPPED_FACE_ERROR:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    new-instance v15, Lkotlin/Pair;

    move-object/from16 v19, v6

    const-string v6, "Face auth stopped due to face recognition error"

    invoke-direct {v15, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_STOPPED_FACE_FAILED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    new-instance v6, Lkotlin/Pair;

    move-object/from16 v20, v15

    const-string v15, "Face auth stopped due to face recognition failed"

    invoke-direct {v6, v15, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_COVER_STATE_CHANGED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    new-instance v15, Lkotlin/Pair;

    move-object/from16 v21, v6

    const-string v6, "Face auth started/stopped because cover state is changed"

    invoke-direct {v15, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_FULL_SCREEN_FACE_WIDGET:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    new-instance v6, Lkotlin/Pair;

    move-object/from16 v22, v15

    const-string v15, "Face auth started/stopped because full screen face widget is changed"

    invoke-direct {v6, v15, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_DYNAMIC_LOCK:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    new-instance v15, Lkotlin/Pair;

    move-object/from16 v23, v6

    const-string v6, "Face auth started/stopped because dynamic lock screen is changed"

    invoke-direct {v15, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_NOTI_STAR_STATE_CHANGED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    new-instance v6, Lkotlin/Pair;

    move-object/from16 v24, v15

    const-string v15, "Face auth started/stopped because noti star state is changed"

    invoke-direct {v6, v15, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_LOCK_ICON_PRESSED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    new-instance v15, Lkotlin/Pair;

    move-object/from16 v25, v6

    const-string v6, "Face auth started/stopped because lock icon is pressed"

    invoke-direct {v15, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_FOLDER_STATE_CHANGED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    new-instance v6, Lkotlin/Pair;

    move-object/from16 v26, v15

    const-string v15, "Face auth started/stopped because folder state is changed"

    invoke-direct {v6, v15, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_STOPPED_PREV_CREDENTIAL_VIEW:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    new-instance v15, Lkotlin/Pair;

    move-object/from16 v27, v6

    const-string v6, "Face auth stopped because showing prev credential view is changed"

    invoke-direct {v15, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v25

    move-object/from16 v25, v27

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object/from16 v14, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v24

    move-object/from16 v24, v26

    move-object/from16 v26, v15

    move-object v15, v0

    filled-new-array/range {v1 .. v26}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthReasonKt;->apiRequestReasonToUiEvent:Ljava/util/Map;

    return-void
.end method
