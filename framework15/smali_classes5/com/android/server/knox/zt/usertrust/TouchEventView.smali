.class public Lcom/android/server/knox/zt/usertrust/TouchEventView;
.super Ljava/lang/Object;
.source "TouchEventView.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/knox/zt/usertrust/TouchEventView$FasterStringBuilder;,
        Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;
    }
.end annotation


# static fields
.field private static final blacklist FLOATING_KEYBOARD_HEIGHT:Ljava/lang/String; = "floating_keyboard_height"

.field private static final blacklist FLOATING_KEYBOARD_INFO:Ljava/lang/String; = "floating_keyboard_info"

.field private static final blacklist FLOATING_KEYBOARD_LOCATION_LAND_X:Ljava/lang/String; = "floating_keyboard_location_land_x"

.field private static final blacklist FLOATING_KEYBOARD_LOCATION_LAND_Y:Ljava/lang/String; = "floating_keyboard_location_land_y"

.field private static final blacklist FLOATING_KEYBOARD_LOCATION_X:Ljava/lang/String; = "floating_keyboard_location_x"

.field private static final blacklist FLOATING_KEYBOARD_LOCATION_Y:Ljava/lang/String; = "floating_keyboard_location_y"

.field private static final blacklist FLOATING_KEYBOARD_ON:Ljava/lang/String; = "floating_keyboard_on"

.field private static final blacklist FLOATING_KEYBOARD_WIDTH:Ljava/lang/String; = "floating_keyboard_width"

.field public static final blacklist HONEY_BOARD_PROVIDER:Ljava/lang/String; = "content://com.samsung.android.honeyboard.provider.KeyboardSettingsProvider"

.field private static final blacklist HONEY_DEFAULT_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.honeyboard/.service.HoneyBoardService"

.field public static final blacklist KEYBOARD_SETTINGS_PROVIDER:Ljava/lang/String; = "content://com.sec.android.inputmethod.implement.setting.provider.KeyboardSettingsProvider"

.field public static final blacklist KEYBOARD_SETTINGS_PROVIDER_BETA:Ljava/lang/String; = "content://com.sec.android.inputmethod.beta.implement.setting.provider.KeyboardSettingsProvider"

.field private static final blacklist SKBDN_DEFAULT_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.inputmethod.beta/com.sec.android.inputmethod.SamsungKeypad"

.field private static final blacklist SKBD_DEFAULT_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.inputmethod/.SamsungKeypad"

.field private static final blacklist TAG:Ljava/lang/String; = "TouchEventView"


# instance fields
.field private blacklist isTyping:Z

.field private blacklist keyboard_x:I

.field private blacklist keyboard_y:I

.field private blacklist mActivePointerId:I

.field private final blacklist mAltVelocity:Landroid/view/VelocityTracker;

.field private blacklist mAuthFactorTouchManager:Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCurDown:Z

.field private blacklist mCurNumPointers:I

.field private blacklist mDebugmodeOn:Z

.field private blacklist mDownTime:J

.field private blacklist mIm:Landroid/hardware/input/InputManager;

.field private blacklist mMaxNumPointers:I

.field private final blacklist mPointers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRawX:F

.field private blacklist mRawY:F

.field private final blacklist mTempCoords:Landroid/view/MotionEvent$PointerCoords;

.field private final blacklist mText:Lcom/android/server/knox/zt/usertrust/TouchEventView$FasterStringBuilder;

.field private final blacklist mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private blacklist mTouchMajor:F

.field private blacklist mTouchMinor:F

.field private blacklist mUpTime:J

.field private final blacklist mVelocity:Landroid/view/VelocityTracker;

.field private blacklist x_offset:F

.field private blacklist y_offset:F


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mIm:Landroid/hardware/input/InputManager;

    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    new-instance v1, Lcom/android/server/knox/zt/usertrust/TouchEventView$FasterStringBuilder;

    invoke-direct {v1}, Lcom/android/server/knox/zt/usertrust/TouchEventView$FasterStringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mText:Lcom/android/server/knox/zt/usertrust/TouchEventView$FasterStringBuilder;

    iput-object v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mAltVelocity:Landroid/view/VelocityTracker;

    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mPointers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mDebugmodeOn:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mRawX:F

    iput v1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mRawY:F

    iput v1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mTouchMinor:F

    iput v1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mTouchMajor:F

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mDownTime:J

    iput-wide v2, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mUpTime:J

    iput v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->keyboard_x:I

    iput v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->keyboard_y:I

    iput v1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->x_offset:F

    iput v1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->y_offset:F

    iput-boolean v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->isTyping:Z

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    iput-object v1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mIm:Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mAuthFactorTouchManager:Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;

    new-instance v1, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;

    invoke-direct {v1}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;-><init>()V

    iget-object v2, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mActivePointerId:I

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mVelocity:Landroid/view/VelocityTracker;

    return-void
.end method

.method private blacklist KeyboardInfo()V
    .locals 15

    const-string/jumbo v0, "floating_keyboard_info"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    const-string v1, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "TouchEventView"

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.sec.android.inputmethod.implement.setting.provider.KeyboardSettingsProvider"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v1, "com.sec.android.inputmethod.beta/com.sec.android.inputmethod.SamsungKeypad"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v1, "content://com.sec.android.inputmethod.beta.implement.setting.provider.KeyboardSettingsProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v13, v5

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v1, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v1, "content://com.samsung.android.honeyboard.provider.KeyboardSettingsProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v13, v5

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v1, "floating_keyboard_on"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string/jumbo v2, "floating_keyboard_location_x"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string/jumbo v3, "floating_keyboard_location_y"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string/jumbo v4, "floating_keyboard_location_land_x"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string/jumbo v6, "floating_keyboard_location_land_y"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string/jumbo v9, "floating_keyboard_width"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string/jumbo v10, "floating_keyboard_height"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isFloatingKeyboardOn: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", x: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", y: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", landX: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", landY: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v9, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->keyboard_x:I

    iput v10, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->keyboard_y:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    if-eqz v0, :cond_6

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_3
    :try_start_2
    const-string/jumbo v1, "unkown keyboard"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1

    :catch_0
    move-exception v1

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method

.method private blacklist isKeyboardShown()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result v1

    return v1
.end method

.method private blacklist isUserTypingKeyboard(FFI)Z
    .locals 4

    invoke-direct {p0}, Lcom/android/server/knox/zt/usertrust/TouchEventView;->isKeyboardShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p3, v0, :cond_3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    if-eq p3, v2, :cond_2

    const/4 v0, 0x3

    if-ne p3, v0, :cond_4

    :cond_2
    cmpl-float v0, p1, v3

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->keyboard_x:I

    int-to-float v0, v0

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_4

    cmpl-float v0, p2, v3

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->keyboard_y:I

    int-to-float v0, v0

    cmpl-float v0, v0, p2

    if-ltz v0, :cond_4

    return v2

    :cond_3
    :goto_0
    cmpl-float v0, p1, v3

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->keyboard_x:I

    int-to-float v0, v0

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_4

    cmpl-float v0, p2, v3

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->keyboard_y:I

    int-to-float v0, v0

    cmpl-float v0, v0, p2

    if-ltz v0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method private blacklist logInputDeviceState(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mIm:Landroid/hardware/input/InputManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    const-string v1, ": "

    const-string v2, "TouchEventView"

    if-eqz v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private blacklist setOffset()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->x_offset:F

    const v2, -0x3b418000    # -1524.0f

    iput v2, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->y_offset:F

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    const/high16 v3, -0x3bea0000    # -600.0f

    if-ne v1, v2, :cond_1

    const v2, -0x3c698000    # -301.0f

    iput v2, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->x_offset:F

    iput v3, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->y_offset:F

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const v2, -0x3c4f8000    # -353.0f

    iput v2, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->x_offset:F

    iput v3, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->y_offset:F

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public whitelist onInputDeviceAdded(I)V
    .locals 1

    const-string v0, "Device Added"

    invoke-direct {p0, p1, v0}, Lcom/android/server/knox/zt/usertrust/TouchEventView;->logInputDeviceState(ILjava/lang/String;)V

    return-void
.end method

.method public whitelist onInputDeviceChanged(I)V
    .locals 1

    const-string v0, "Device Changed"

    invoke-direct {p0, p1, v0}, Lcom/android/server/knox/zt/usertrust/TouchEventView;->logInputDeviceState(ILjava/lang/String;)V

    return-void
.end method

.method public whitelist onInputDeviceRemoved(I)V
    .locals 1

    const-string v0, "Device Removed"

    invoke-direct {p0, p1, v0}, Lcom/android/server/knox/zt/usertrust/TouchEventView;->logInputDeviceState(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mAuthFactorTouchManager:Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;

    invoke-virtual {v2, v1}, Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;->onPointerEvent(Landroid/view/MotionEvent;)V

    iget-boolean v2, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mDebugmodeOn:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mRawX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mRawY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getTouchMinor()F

    move-result v2

    iput v2, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mTouchMinor:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getTouchMajor()F

    move-result v2

    iput v2, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mTouchMajor:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mDownTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mUpTime:J

    invoke-direct/range {p0 .. p0}, Lcom/android/server/knox/zt/usertrust/TouchEventView;->KeyboardInfo()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/knox/zt/usertrust/TouchEventView;->setOffset()I

    move-result v2

    iget v3, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mRawX:F

    iget v4, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->x_offset:F

    add-float/2addr v3, v4

    iput v3, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mRawX:F

    iget v3, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mRawY:F

    iget v4, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->y_offset:F

    add-float/2addr v3, v4

    iput v3, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mRawY:F

    iget v3, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mRawX:F

    iget v4, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mRawY:F

    invoke-direct {v0, v3, v4, v2}, Lcom/android/server/knox/zt/usertrust/TouchEventView;->isUserTypingKeyboard(FFI)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->isTyping:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mTouchMajor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mTouchMajor:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mTouchMinor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mTouchMinor:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mDownTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mDownTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mUpTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mUpTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TouchEventView"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isTyping: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->isTyping:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    iget-object v5, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x20

    const v7, 0xff00

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v3, :cond_1

    and-int/lit16 v10, v3, 0xff

    const/4 v11, 0x5

    if-ne v10, v11, :cond_9

    :cond_1
    and-int v10, v3, v7

    shr-int/lit8 v10, v10, 0x8

    if-nez v3, :cond_3

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v5, :cond_2

    iget-object v12, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;

    invoke-virtual {v12}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->clearTrace()V

    invoke-static {v12, v8}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fputmCurDown(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;Z)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v9, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mCurDown:Z

    iput v8, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mCurNumPointers:I

    iput v8, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mMaxNumPointers:I

    iget-object v11, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->clear()V

    iget-object v11, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v11, :cond_3

    iget-object v11, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->clear()V

    :cond_3
    iget v11, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mCurNumPointers:I

    add-int/2addr v11, v9

    iput v11, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mCurNumPointers:I

    iget v11, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mMaxNumPointers:I

    iget v12, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mCurNumPointers:I

    if-ge v11, v12, :cond_4

    iget v11, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mCurNumPointers:I

    iput v11, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mMaxNumPointers:I

    :cond_4
    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    :goto_1
    if-gt v5, v11, :cond_5

    new-instance v12, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;

    invoke-direct {v12}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;-><init>()V

    iget-object v13, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    iget v12, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mActivePointerId:I

    if-ltz v12, :cond_6

    iget-object v12, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mPointers:Ljava/util/ArrayList;

    iget v13, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mActivePointerId:I

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;

    invoke-static {v12}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fgetmCurDown(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;)Z

    move-result v12

    if-nez v12, :cond_7

    :cond_6
    iput v11, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mActivePointerId:I

    :cond_7
    iget-object v12, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;

    invoke-static {v12, v9}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fputmCurDown(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v13

    invoke-static {v13}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v13

    if-eqz v13, :cond_8

    invoke-virtual {v13, v6}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v14

    if-eqz v14, :cond_8

    move v14, v9

    goto :goto_2

    :cond_8
    move v14, v8

    :goto_2
    invoke-static {v12, v14}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fputmHasBoundingBox(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;Z)V

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    iget-object v11, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v11, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v11, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v11, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v11, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v11, :cond_a

    iget-object v11, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v11, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v11, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v11, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v11

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_f

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v10, :cond_e

    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    iget-boolean v13, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mCurDown:Z

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;

    goto :goto_5

    :cond_b
    const/4 v13, 0x0

    :goto_5
    if-eqz v13, :cond_c

    invoke-static {v13}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v16

    move-object/from16 v7, v16

    goto :goto_6

    :cond_c
    iget-object v7, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    :goto_6
    invoke-virtual {v1, v14, v12, v7}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    if-eqz v13, :cond_d

    iget v6, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v9, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v13, v6, v9, v8}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->addTrace(FFZ)V

    :cond_d
    add-int/lit8 v14, v14, 0x1

    const/16 v6, 0x20

    const v7, 0xff00

    const/4 v9, 0x1

    goto :goto_4

    :cond_e
    add-int/lit8 v12, v12, 0x1

    const/16 v6, 0x20

    const v7, 0xff00

    const/4 v9, 0x1

    goto :goto_3

    :cond_f
    const/4 v6, 0x0

    :goto_7
    if-ge v6, v10, :cond_15

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iget-boolean v9, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mCurDown:Z

    if-eqz v9, :cond_10

    iget-object v9, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;

    goto :goto_8

    :cond_10
    const/4 v9, 0x0

    :goto_8
    if-eqz v9, :cond_11

    invoke-static {v9}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v12

    goto :goto_9

    :cond_11
    iget-object v12, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    :goto_9
    invoke-virtual {v1, v6, v12}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    if-eqz v9, :cond_14

    iget v13, v12, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v14, v12, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v15, 0x1

    invoke-virtual {v9, v13, v14, v15}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->addTrace(FFZ)V

    iget-object v13, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v13, v7}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v13

    invoke-static {v9, v13}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fputmXVelocity(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;F)V

    iget-object v13, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v13, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v13

    invoke-static {v9, v13}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fputmYVelocity(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;F)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mXVelocity: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v9}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fgetmXVelocity(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;)F

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", mYVelocity: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v9}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fgetmYVelocity(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;)F

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v13, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v13, :cond_12

    iget-object v13, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v13, v7}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v13

    invoke-static {v9, v13}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fputmAltXVelocity(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;F)V

    iget-object v13, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v13, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v13

    invoke-static {v9, v13}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fputmAltYVelocity(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;F)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mAltXVelocity: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v9}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fgetmAltXVelocity(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;)F

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", mAltYVelocity: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v9}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fgetmAltYVelocity(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;)F

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v13

    invoke-static {v9, v13}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fputmToolType(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;I)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ToolType: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v9}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fgetmToolType(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fgetmHasBoundingBox(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;)Z

    move-result v13

    if-eqz v13, :cond_13

    const/16 v13, 0x20

    invoke-virtual {v1, v13, v6}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v14

    invoke-static {v9, v14}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fputmBoundingLeft(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;F)V

    const/16 v14, 0x21

    invoke-virtual {v1, v14, v6}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v14

    invoke-static {v9, v14}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fputmBoundingTop(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;F)V

    const/16 v14, 0x22

    invoke-virtual {v1, v14, v6}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v14

    invoke-static {v9, v14}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fputmBoundingRight(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;F)V

    const/16 v14, 0x23

    invoke-virtual {v1, v14, v6}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v14

    invoke-static {v9, v14}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fputmBoundingBottom(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;F)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "mBoundingLeft: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v9}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fgetmBoundingLeft(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;)F

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mBoundingRight: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v9}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fgetmBoundingRight(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;)F

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mBoundingTop: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v9}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fgetmBoundingTop(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;)F

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mBoundingBottom: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v9}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fgetmBoundingBottom(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;)F

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_13
    const/16 v13, 0x20

    goto :goto_a

    :cond_14
    const/16 v13, 0x20

    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_7

    :cond_15
    const/4 v4, 0x3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_16

    if-eq v3, v4, :cond_16

    and-int/lit16 v6, v3, 0xff

    const/4 v7, 0x6

    if-ne v6, v7, :cond_1b

    :cond_16
    const v6, 0xff00

    and-int/2addr v6, v3

    shr-int/lit8 v6, v6, 0x8

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iget-object v9, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;

    invoke-static {v9, v8}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fputmCurDown(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;Z)V

    const/4 v12, 0x1

    if-eq v3, v12, :cond_1a

    if-ne v3, v4, :cond_17

    goto :goto_c

    :cond_17
    iget v4, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mCurNumPointers:I

    sub-int/2addr v4, v12

    iput v4, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mCurNumPointers:I

    iget v4, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mActivePointerId:I

    if-ne v4, v7, :cond_19

    if-nez v6, :cond_18

    goto :goto_b

    :cond_18
    move v12, v8

    :goto_b
    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mActivePointerId:I

    :cond_19
    const/high16 v4, 0x7fc00000    # Float.NaN

    invoke-virtual {v9, v4, v4, v8}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->addTrace(FFZ)V

    goto :goto_d

    :cond_1a
    :goto_c
    iput-boolean v8, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mCurDown:Z

    iput v8, v0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mCurNumPointers:I

    :cond_1b
    :goto_d
    return-void
.end method

.method public blacklist setDebugmode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mDebugmodeOn:Z

    return-void
.end method
