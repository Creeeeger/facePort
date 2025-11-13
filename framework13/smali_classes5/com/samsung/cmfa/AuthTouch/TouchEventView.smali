.class public Lcom/samsung/cmfa/AuthTouch/TouchEventView;
.super Ljava/lang/Object;
.source "TouchEventView.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;,
        Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;
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
            "Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRawX:F

.field private blacklist mRawY:F

.field private final blacklist mTempCoords:Landroid/view/MotionEvent$PointerCoords;

.field private final blacklist mText:Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;

.field private final blacklist mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private blacklist mTouchMajor:F

.field private blacklist mTouchMinor:F

.field private blacklist mUpTime:J

.field private final blacklist mVelocity:Landroid/view/VelocityTracker;

.field private blacklist x_offset:F

.field private blacklist y_offset:F


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mIm:Landroid/hardware/input/InputManager;

    .line 49
    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 58
    new-instance v1, Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;

    invoke-direct {v1}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;-><init>()V

    iput-object v1, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mText:Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;

    .line 59
    iput-object v0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mAltVelocity:Landroid/view/VelocityTracker;

    .line 60
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mPointers:Ljava/util/ArrayList;

    .line 63
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mDebugmodeOn:Z

    .line 64
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mRawX:F

    .line 65
    iput v2, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mRawY:F

    .line 66
    iput v2, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mTouchMinor:F

    .line 67
    iput v2, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mTouchMajor:F

    .line 68
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mDownTime:J

    .line 69
    iput-wide v3, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mUpTime:J

    .line 85
    iput v1, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->keyboard_x:I

    .line 86
    iput v1, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->keyboard_y:I

    .line 87
    iput v2, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->x_offset:F

    .line 88
    iput v2, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->y_offset:F

    .line 89
    iput-boolean v1, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->isTyping:Z

    .line 94
    const-class v2, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    iput-object v2, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mIm:Landroid/hardware/input/InputManager;

    .line 95
    iput-object p1, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mContext:Landroid/content/Context;

    .line 97
    new-instance v2, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;

    invoke-direct {v2}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;-><init>()V

    .line 98
    .local v2, "ps":Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    iput v1, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mActivePointerId:I

    .line 101
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mVelocity:Landroid/view/VelocityTracker;

    .line 102
    iget-object v0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->getInstance(Landroid/content/Context;)Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->registerAuthTouchEnableListener(Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;)V

    .line 103
    return-void
.end method

.method private blacklist KeyboardInfo()V
    .locals 15

    .line 278
    const-string v0, "floating_keyboard_info"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    .line 279
    .local v5, "columns":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 281
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    .line 282
    .local v7, "defaultIme":Ljava/lang/String;
    const-string v1, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "TouchEventView"

    if-eqz v1, :cond_0

    .line 283
    :try_start_1
    iget-object v1, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.sec.android.inputmethod.implement.setting.provider.KeyboardSettingsProvider"

    .line 284
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 283
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 286
    :cond_0
    const-string v1, "com.sec.android.inputmethod.beta/com.sec.android.inputmethod.SamsungKeypad"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    iget-object v1, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v1, "content://com.sec.android.inputmethod.beta.implement.setting.provider.KeyboardSettingsProvider"

    .line 288
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 287
    move-object v13, v5

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 290
    :cond_1
    const-string v1, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 291
    iget-object v1, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v1, "content://com.samsung.android.honeyboard.provider.KeyboardSettingsProvider"

    .line 292
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 291
    move-object v13, v5

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 299
    :goto_0
    if-eqz v0, :cond_2

    .line 300
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 301
    const-string v1, "floating_keyboard_on"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 302
    .local v1, "isFloatingKeyboardOn":I
    const-string v2, "floating_keyboard_location_x"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 303
    .local v2, "x":I
    const-string v3, "floating_keyboard_location_y"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 304
    .local v3, "y":I
    const-string v4, "floating_keyboard_location_land_x"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 305
    .local v4, "landX":I
    const-string v6, "floating_keyboard_location_land_y"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 306
    .local v6, "landY":I
    const-string v9, "floating_keyboard_width"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 307
    .local v9, "width":I
    const-string v10, "floating_keyboard_height"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 308
    .local v10, "height":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isFloatingKeyboardOn: "

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

    .line 309
    iput v9, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->keyboard_x:I

    .line 310
    iput v10, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->keyboard_y:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    .end local v1    # "isFloatingKeyboardOn":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "landX":I
    .end local v6    # "landY":I
    .end local v7    # "defaultIme":Ljava/lang/String;
    .end local v9    # "width":I
    .end local v10    # "height":I
    :cond_2
    if-eqz v0, :cond_6

    .line 315
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 296
    .restart local v7    # "defaultIme":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string/jumbo v1, "unkown keyboard"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 314
    if-eqz v0, :cond_4

    .line 315
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 297
    :cond_4
    return-void

    .line 314
    .end local v7    # "defaultIme":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    .line 315
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 317
    :cond_5
    throw v1

    .line 312
    :catch_0
    move-exception v1

    .line 314
    if-eqz v0, :cond_6

    .line 315
    goto :goto_1

    .line 318
    :cond_6
    :goto_2
    return-void
.end method

.method private blacklist isKeyboardShown()Z
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 323
    .local v0, "is":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result v1

    return v1
.end method

.method private blacklist isUserTypingKeyboard(FFI)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "orient"    # I

    .line 346
    invoke-direct {p0}, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->isKeyboardShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 347
    return v1

    .line 350
    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p3, v0, :cond_3

    if-nez p3, :cond_1

    goto :goto_0

    .line 355
    :cond_1
    if-eq p3, v2, :cond_2

    const/4 v0, 0x3

    if-ne p3, v0, :cond_4

    .line 356
    :cond_2
    cmpl-float v0, p1, v3

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->keyboard_x:I

    int-to-float v0, v0

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_4

    cmpl-float v0, p2, v3

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->keyboard_y:I

    int-to-float v0, v0

    cmpl-float v0, v0, p2

    if-ltz v0, :cond_4

    .line 357
    return v2

    .line 351
    :cond_3
    :goto_0
    cmpl-float v0, p1, v3

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->keyboard_x:I

    int-to-float v0, v0

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_4

    cmpl-float v0, p2, v3

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->keyboard_y:I

    int-to-float v0, v0

    cmpl-float v0, v0, p2

    if-ltz v0, :cond_4

    .line 352
    return v2

    .line 360
    :cond_4
    return v1
.end method

.method private blacklist logInputDeviceState(ILjava/lang/String;)V
    .locals 4
    .param p1, "deviceId"    # I
    .param p2, "state"    # Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mIm:Landroid/hardware/input/InputManager;

    if-nez v0, :cond_0

    .line 267
    return-void

    .line 269
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 270
    .local v0, "device":Landroid/view/InputDevice;
    const-string v1, ": "

    const-string v2, "TouchEventView"

    if-eqz v0, :cond_1

    .line 271
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

    .line 273
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

    .line 275
    :goto_0
    return-void
.end method

.method private blacklist setOffset()I
    .locals 4

    .line 327
    iget-object v0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 328
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 329
    .local v1, "rotation":I
    if-nez v1, :cond_0

    .line 330
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->x_offset:F

    .line 331
    const v2, -0x3b418000    # -1524.0f

    iput v2, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->y_offset:F

    goto :goto_0

    .line 333
    :cond_0
    const/4 v2, 0x1

    const/high16 v3, -0x3bea0000    # -600.0f

    if-ne v1, v2, :cond_1

    .line 334
    const v2, -0x3c698000    # -301.0f

    iput v2, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->x_offset:F

    .line 335
    iput v3, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->y_offset:F

    goto :goto_0

    .line 337
    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 338
    const v2, -0x3c4f8000    # -353.0f

    iput v2, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->x_offset:F

    .line 339
    iput v3, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->y_offset:F

    .line 342
    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public whitelist onInputDeviceAdded(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .line 252
    const-string v0, "Device Added"

    invoke-direct {p0, p1, v0}, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->logInputDeviceState(ILjava/lang/String;)V

    .line 253
    return-void
.end method

.method public whitelist onInputDeviceChanged(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .line 257
    const-string v0, "Device Changed"

    invoke-direct {p0, p1, v0}, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->logInputDeviceState(ILjava/lang/String;)V

    .line 258
    return-void
.end method

.method public whitelist onInputDeviceRemoved(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .line 262
    const-string v0, "Device Removed"

    invoke-direct {p0, p1, v0}, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->logInputDeviceState(ILjava/lang/String;)V

    .line 263
    return-void
.end method

.method public blacklist onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 17
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 112
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->getInstance(Landroid/content/Context;)Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->onPointerEvent(Landroid/view/MotionEvent;)V

    .line 113
    iget-boolean v2, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mDebugmodeOn:Z

    if-nez v2, :cond_0

    .line 114
    return-void

    .line 115
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mRawX:F

    .line 116
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mRawY:F

    .line 117
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getTouchMinor()F

    move-result v2

    iput v2, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mTouchMinor:F

    .line 118
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getTouchMajor()F

    move-result v2

    iput v2, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mTouchMajor:F

    .line 119
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mDownTime:J

    .line 120
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mUpTime:J

    .line 121
    invoke-direct/range {p0 .. p0}, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->KeyboardInfo()V

    .line 122
    invoke-direct/range {p0 .. p0}, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->setOffset()I

    move-result v2

    .line 123
    .local v2, "orient":I
    iget v3, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mRawX:F

    iget v4, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->x_offset:F

    add-float/2addr v3, v4

    iput v3, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mRawX:F

    .line 124
    iget v4, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mRawY:F

    iget v5, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->y_offset:F

    add-float/2addr v4, v5

    iput v4, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mRawY:F

    .line 125
    invoke-direct {v0, v3, v4, v2}, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->isUserTypingKeyboard(FFI)Z

    move-result v3

    iput-boolean v3, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->isTyping:Z

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTouchMajor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mTouchMajor:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mTouchMinor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mTouchMinor:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mDownTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mDownTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mUpTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mUpTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TouchEventView"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isTyping: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->isTyping:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 129
    .local v3, "action":I
    iget-object v5, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 131
    .local v5, "NP":I
    const/16 v6, 0x20

    const v7, 0xff00

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v3, :cond_1

    and-int/lit16 v10, v3, 0xff

    const/4 v11, 0x5

    if-ne v10, v11, :cond_9

    .line 133
    :cond_1
    and-int v10, v3, v7

    shr-int/lit8 v10, v10, 0x8

    .line 135
    .local v10, "index":I
    if-nez v3, :cond_3

    .line 136
    const/4 v11, 0x0

    .local v11, "p":I
    :goto_0
    if-ge v11, v5, :cond_2

    .line 137
    iget-object v12, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;

    .line 138
    .local v12, "ps":Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;
    invoke-virtual {v12}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->clearTrace()V

    .line 139
    invoke-static {v12, v8}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->-$$Nest$fputmCurDown(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;Z)V

    .line 136
    .end local v12    # "ps":Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 141
    .end local v11    # "p":I
    :cond_2
    iput-boolean v9, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mCurDown:Z

    .line 142
    iput v8, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mCurNumPointers:I

    .line 143
    iput v8, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mMaxNumPointers:I

    .line 144
    iget-object v11, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->clear()V

    .line 145
    iget-object v11, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v11, :cond_3

    .line 146
    invoke-virtual {v11}, Landroid/view/VelocityTracker;->clear()V

    .line 150
    :cond_3
    iget v11, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mCurNumPointers:I

    add-int/2addr v11, v9

    iput v11, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mCurNumPointers:I

    .line 151
    iget v12, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mMaxNumPointers:I

    if-ge v12, v11, :cond_4

    .line 152
    iput v11, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mMaxNumPointers:I

    .line 155
    :cond_4
    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    .line 156
    .local v11, "id":I
    :goto_1
    if-gt v5, v11, :cond_5

    .line 157
    new-instance v12, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;

    invoke-direct {v12}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;-><init>()V

    .line 158
    .restart local v12    # "ps":Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;
    iget-object v13, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    nop

    .end local v12    # "ps":Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;
    add-int/lit8 v5, v5, 0x1

    .line 160
    goto :goto_1

    .line 162
    :cond_5
    iget v12, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mActivePointerId:I

    if-ltz v12, :cond_6

    iget-object v13, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mPointers:Ljava/util/ArrayList;

    .line 163
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;

    invoke-static {v12}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->-$$Nest$fgetmCurDown(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 164
    :cond_6
    iput v11, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mActivePointerId:I

    .line 167
    :cond_7
    iget-object v12, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;

    .line 168
    .restart local v12    # "ps":Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;
    invoke-static {v12, v9}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->-$$Nest$fputmCurDown(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;Z)V

    .line 169
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v13

    invoke-static {v13}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v13

    .line 170
    .local v13, "device":Landroid/view/InputDevice;
    if-eqz v13, :cond_8

    .line 171
    invoke-virtual {v13, v6}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v14

    if-eqz v14, :cond_8

    move v14, v9

    goto :goto_2

    :cond_8
    move v14, v8

    :goto_2
    invoke-static {v12, v14}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->-$$Nest$fputmHasBoundingBox(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;Z)V

    .line 174
    .end local v10    # "index":I
    .end local v11    # "id":I
    .end local v12    # "ps":Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;
    .end local v13    # "device":Landroid/view/InputDevice;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    .line 176
    .local v10, "NI":I
    iget-object v11, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v11, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 177
    iget-object v11, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v11, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 178
    iget-object v11, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v11, :cond_a

    .line 179
    invoke-virtual {v11, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 180
    iget-object v11, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v11, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 183
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v11

    .line 184
    .local v11, "N":I
    const/4 v12, 0x0

    .local v12, "historyPos":I
    :goto_3
    if-ge v12, v11, :cond_f

    .line 185
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_4
    if-ge v14, v10, :cond_e

    .line 186
    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .line 187
    .local v15, "id":I
    iget-boolean v13, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mCurDown:Z

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;

    goto :goto_5

    :cond_b
    const/4 v13, 0x0

    .line 188
    .local v13, "ps":Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;
    :goto_5
    if-eqz v13, :cond_c

    invoke-static {v13}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->-$$Nest$fgetmCoords(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v16

    move-object/from16 v7, v16

    goto :goto_6

    :cond_c
    iget-object v7, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 189
    .local v7, "coords":Landroid/view/MotionEvent$PointerCoords;
    :goto_6
    invoke-virtual {v1, v14, v12, v7}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 190
    if-eqz v13, :cond_d

    .line 191
    iget v6, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v9, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v13, v6, v9, v8}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->addTrace(FFZ)V

    .line 185
    .end local v7    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .end local v13    # "ps":Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;
    .end local v15    # "id":I
    :cond_d
    add-int/lit8 v14, v14, 0x1

    const/16 v6, 0x20

    const v7, 0xff00

    const/4 v9, 0x1

    goto :goto_4

    .line 184
    .end local v14    # "i":I
    :cond_e
    add-int/lit8 v12, v12, 0x1

    const/16 v6, 0x20

    const v7, 0xff00

    const/4 v9, 0x1

    goto :goto_3

    .line 195
    .end local v12    # "historyPos":I
    :cond_f
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_7
    if-ge v6, v10, :cond_15

    .line 196
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 197
    .local v7, "id":I
    iget-boolean v9, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mCurDown:Z

    if-eqz v9, :cond_10

    iget-object v9, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;

    goto :goto_8

    :cond_10
    const/4 v9, 0x0

    .line 198
    .local v9, "ps":Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;
    :goto_8
    if-eqz v9, :cond_11

    invoke-static {v9}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->-$$Nest$fgetmCoords(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v12

    goto :goto_9

    :cond_11
    iget-object v12, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 199
    .local v12, "coords":Landroid/view/MotionEvent$PointerCoords;
    :goto_9
    invoke-virtual {v1, v6, v12}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 200
    if-eqz v9, :cond_14

    .line 201
    iget v13, v12, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v14, v12, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v15, 0x1

    invoke-virtual {v9, v13, v14, v15}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->addTrace(FFZ)V

    .line 202
    iget-object v13, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v13, v7}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v13

    invoke-static {v9, v13}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->-$$Nest$fputmXVelocity(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;F)V

    .line 203
    iget-object v13, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v13, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v13

    invoke-static {v9, v13}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->-$$Nest$fputmYVelocity(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;F)V

    .line 204
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mXVelocity: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v9}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->-$$Nest$fgetmXVelocity(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;)F

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", mYVelocity: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v9}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->-$$Nest$fgetmYVelocity(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;)F

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v13, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-static {v9}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->-$$Nest$fgetmEstimator(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v14

    invoke-virtual {v13, v7, v14}, Landroid/view/VelocityTracker;->getEstimator(ILandroid/view/VelocityTracker$Estimator;)Z

    .line 206
    iget-object v13, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v13, :cond_12

    .line 207
    invoke-virtual {v13, v7}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v13

    invoke-static {v9, v13}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->-$$Nest$fputmAltXVelocity(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;F)V

    .line 208
    iget-object v13, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v13, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v13

    invoke-static {v9, v13}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->-$$Nest$fputmAltYVelocity(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;F)V

    .line 209
    iget-object v13, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-static {v9}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->-$$Nest$fgetmAltEstimator(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v14

    invoke-virtual {v13, v7, v14}, Landroid/view/VelocityTracker;->getEstimator(ILandroid/view/VelocityTracker$Estimator;)Z

    .line 210
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mAltXVelocity: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v9}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->-$$Nest$fgetmAltXVelocity(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;)F

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", mAltYVelocity: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v9}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->-$$Nest$fgetmAltYVelocity(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;)F

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_12
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v13

    invoke-static {v9, v13}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->-$$Nest$fputmToolType(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;I)V

    .line 213
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ToolType: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v9}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->-$$Nest$fgetmToolType(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-static {v9}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->-$$Nest$fgetmHasBoundingBox(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 215
    const/16 v13, 0x20

    invoke-virtual {v1, v13, v6}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v14

    invoke-static {v9, v14}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->-$$Nest$fputmBoundingLeft(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;F)V

    .line 216
    const/16 v14, 0x21

    invoke-virtual {v1, v14, v6}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v14

    invoke-static {v9, v14}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->-$$Nest$fputmBoundingTop(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;F)V

    .line 217
    const/16 v14, 0x22

    invoke-virtual {v1, v14, v6}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v14

    invoke-static {v9, v14}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->-$$Nest$fputmBoundingRight(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;F)V

    .line 218
    const/16 v14, 0x23

    invoke-virtual {v1, v14, v6}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v14

    invoke-static {v9, v14}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->-$$Nest$fputmBoundingBottom(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;F)V

    .line 219
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mBoundingLeft: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v9}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->-$$Nest$fgetmBoundingLeft(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;)F

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mBoundingRight: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v9}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->-$$Nest$fgetmBoundingRight(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;)F

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mBoundingTop: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v9}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->-$$Nest$fgetmBoundingTop(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;)F

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mBoundingBottom: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v9}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->-$$Nest$fgetmBoundingBottom(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;)F

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 214
    :cond_13
    const/16 v13, 0x20

    goto :goto_a

    .line 200
    :cond_14
    const/16 v13, 0x20

    .line 195
    .end local v7    # "id":I
    .end local v9    # "ps":Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;
    .end local v12    # "coords":Landroid/view/MotionEvent$PointerCoords;
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_7

    .line 224
    .end local v6    # "i":I
    :cond_15
    const/4 v4, 0x3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_16

    if-eq v3, v4, :cond_16

    and-int/lit16 v6, v3, 0xff

    const/4 v7, 0x6

    if-ne v6, v7, :cond_1b

    .line 227
    :cond_16
    const v6, 0xff00

    and-int/2addr v6, v3

    shr-int/lit8 v6, v6, 0x8

    .line 230
    .local v6, "index":I
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 231
    .restart local v7    # "id":I
    iget-object v9, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;

    .line 232
    .restart local v9    # "ps":Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;
    invoke-static {v9, v8}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->-$$Nest$fputmCurDown(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;Z)V

    .line 234
    const/4 v12, 0x1

    if-eq v3, v12, :cond_1a

    if-ne v3, v4, :cond_17

    goto :goto_c

    .line 239
    :cond_17
    iget v4, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mCurNumPointers:I

    sub-int/2addr v4, v12

    iput v4, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mCurNumPointers:I

    .line 240
    iget v4, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mActivePointerId:I

    if-ne v4, v7, :cond_19

    .line 241
    if-nez v6, :cond_18

    goto :goto_b

    :cond_18
    move v12, v8

    :goto_b
    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mActivePointerId:I

    .line 243
    :cond_19
    const/high16 v4, 0x7fc00000    # Float.NaN

    invoke-virtual {v9, v4, v4, v8}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->addTrace(FFZ)V

    goto :goto_d

    .line 236
    :cond_1a
    :goto_c
    iput-boolean v8, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mCurDown:Z

    .line 237
    iput v8, v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mCurNumPointers:I

    .line 248
    .end local v6    # "index":I
    .end local v7    # "id":I
    .end local v9    # "ps":Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;
    :cond_1b
    :goto_d
    return-void
.end method

.method public blacklist setDebugmode(Z)V
    .locals 0
    .param p1, "set"    # Z

    .line 106
    iput-boolean p1, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->mDebugmodeOn:Z

    .line 107
    return-void
.end method
