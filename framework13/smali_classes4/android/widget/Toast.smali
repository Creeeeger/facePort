.class public Landroid/widget/Toast;
.super Ljava/lang/Object;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Toast$CallbackBinder;,
        Landroid/widget/Toast$Callback;,
        Landroid/widget/Toast$TN;,
        Landroid/widget/Toast$Duration;
    }
.end annotation


# static fields
.field private static final blacklist CHANGE_TEXT_TOASTS_IN_THE_SYSTEM:J = 0x8cf3b87L

.field static final blacklist DEBUG:Z

.field public static final whitelist LENGTH_LONG:I = 0x1

.field public static final whitelist LENGTH_SHORT:I = 0x0

.field private static final blacklist MAX_LOOP_COUNT:I = 0x64

.field public static final whitelist SEM_DISPLAY_TYPE_DEFAULT:I = 0x0

.field public static final whitelist SEM_DISPLAY_TYPE_DEX:I = 0x1

.field public static final whitelist SEM_LENGTH_LONG_DOUBLE:I = 0x3e8

.field static final greylist-max-o TAG:Ljava/lang/String; = "Toast"

.field static final greylist-max-o localLOGV:Z

.field private static greylist-max-p sService:Landroid/app/INotificationManager;


# instance fields
.field private final blacklist mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/Toast$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mContext:Landroid/content/Context;

.field blacklist mCustomDisplayId:I

.field blacklist mDisplayContext:Landroid/content/Context;

.field greylist mDuration:I

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIsCustomToast:Z

.field private greylist-max-o mNextView:Landroid/view/View;

.field blacklist mNextViewForDex:Landroid/view/View;

.field final greylist-max-p mTN:Landroid/widget/Toast$TN;

.field private blacklist mText:Ljava/lang/CharSequence;

.field private final blacklist mToken:Landroid/os/Binder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetService()Landroid/app/INotificationManager;
    .locals 1

    invoke-static {}, Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 129
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/widget/Toast;->localLOGV:Z

    .line 130
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/widget/Toast;->DEBUG:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 241
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Toast;->mDisplayContext:Landroid/content/Context;

    .line 227
    iput-object v0, p0, Landroid/widget/Toast;->mNextViewForDex:Landroid/view/View;

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Toast;->mIsCustomToast:Z

    .line 229
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Toast;->mCustomDisplayId:I

    .line 248
    iput-object p1, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    .line 249
    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    iput-object v4, p0, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    .line 250
    invoke-direct {p0, p2}, Landroid/widget/Toast;->getLooper(Landroid/os/Looper;)Landroid/os/Looper;

    move-result-object p2

    .line 251
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/widget/Toast;->mHandler:Landroid/os/Handler;

    .line 252
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    .line 253
    new-instance v0, Landroid/widget/Toast$TN;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/widget/Toast$TN;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Binder;Ljava/util/List;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105050f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/Toast$TN;->mY:I

    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e012a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Landroid/widget/Toast$TN;->mGravity:I

    .line 259
    return-void
.end method

.method private blacklist checkGameHomeAllowList()Z
    .locals 7

    .line 1052
    const-string/jumbo v0, "sys.boot_completed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Toast"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1053
    const-string v0, "Boot is not completed yet. Don\'t read settings db."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    return v2

    .line 1057
    :cond_0
    iget-object v0, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "game_no_interruption"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1060
    .local v0, "gameNoInterruption":I
    if-lez v0, :cond_3

    .line 1062
    iget-object v3, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "game_no_interruption_white_list"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1065
    .local v3, "allowList":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1066
    iget-object v4, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1068
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1069
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GameNoInterruption mode. Show game toast. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    return v2

    .line 1072
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GameNoInterruption mode. Block toast "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    const/4 v1, 0x1

    return v1

    .line 1076
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_2
    const-string v4, "gameNoInterruption is on, but allowList is null."

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    return v2

    .line 1081
    .end local v3    # "allowList":Ljava/lang/String;
    :cond_3
    return v2
.end method

.method private blacklist getActivityContext(Landroid/content/Context;)Landroid/app/Activity;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 1144
    const/4 v0, 0x0

    .line 1145
    .local v0, "activity":Landroid/app/Activity;
    move-object v1, p1

    .line 1146
    .local v1, "tempContext":Landroid/content/Context;
    const/4 v2, 0x0

    .line 1148
    .local v2, "count":I
    :goto_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_2

    .line 1149
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 1150
    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    goto :goto_2

    .line 1152
    :cond_0
    instance-of v3, v1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Landroid/content/ContextWrapper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    goto :goto_1

    .line 1153
    :cond_1
    const/4 v3, 0x0

    :goto_1
    move-object v1, v3

    .line 1155
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1157
    :cond_2
    return-object v0
.end method

.method private blacklist getLooper(Landroid/os/Looper;)Landroid/os/Looper;
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .line 262
    if-eqz p1, :cond_0

    .line 263
    return-object p1

    .line 265
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "Can\'t toast on a thread that has not called Looper.prepare()"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    return-object v0
.end method

.method private static greylist-max-p getService()Landroid/app/INotificationManager;
    .locals 1

    .line 828
    sget-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    if-eqz v0, :cond_0

    .line 829
    return-object v0

    .line 831
    :cond_0
    nop

    .line 832
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 831
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    .line 833
    return-object v0
.end method

.method private blacklist isDexDualModeEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 1129
    const/4 v0, 0x0

    .line 1131
    .local v0, "isDesktopDualMode":Z
    const-string v1, "desktopmode"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 1133
    .local v1, "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    if-eqz v1, :cond_1

    .line 1134
    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    .line 1135
    .local v2, "state":Lcom/samsung/android/desktopmode/SemDesktopModeState;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 1136
    invoke-virtual {v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v3

    const/16 v4, 0x66

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    .line 1139
    .end local v2    # "state":Lcom/samsung/android/desktopmode/SemDesktopModeState;
    :cond_1
    sget-boolean v2, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDexDualModeEnabled: isDesktopDualMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Toast"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :cond_2
    return v0
.end method

.method private blacklist isSpeg()Z
    .locals 3

    .line 271
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 273
    :cond_0
    iget-object v0, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 274
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->isSpeg(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private blacklist isSystemRenderedTextToast()Z
    .locals 2

    .line 687
    const-wide/32 v0, 0x8cf3b87

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 783
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "duration"    # I

    .line 755
    const-wide/32 v0, 0x8cf3b87

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 757
    .local v0, "result":Landroid/widget/Toast;
    iput-object p2, v0, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    .line 758
    iput p3, v0, Landroid/widget/Toast;->mDuration:I

    .line 759
    return-object v0

    .line 761
    .end local v0    # "result":Landroid/widget/Toast;
    :cond_0
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 762
    .restart local v0    # "result":Landroid/widget/Toast;
    invoke-static {p0, p2}, Landroid/widget/ToastPresenter;->getTextToastView(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v1

    .line 763
    .local v1, "v":Landroid/view/View;
    iput-object v1, v0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    .line 764
    iput p3, v0, Landroid/widget/Toast;->mDuration:I

    .line 766
    return-object v0
.end method

.method public static whitelist makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I

    .line 744
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method private blacklist semCreateDisplayContextForDex()Landroid/content/Context;
    .locals 6

    .line 1186
    const/4 v0, 0x0

    .line 1187
    .local v0, "displayContext":Landroid/content/Context;
    iget-object v1, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 1188
    .local v1, "dm":Landroid/hardware/display/DisplayManager;
    if-eqz v1, :cond_0

    .line 1189
    const-string v2, "com.samsung.android.hardware.display.category.DESKTOP"

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v2

    .line 1190
    .local v2, "displays":[Landroid/view/Display;
    array-length v3, v2

    if-lez v3, :cond_0

    const/4 v3, 0x0

    aget-object v4, v2, v3

    if-eqz v4, :cond_0

    .line 1191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "show: createDisplayContext displays = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Toast"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    iget-object v4, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    aget-object v3, v2, v3

    invoke-virtual {v4, v3}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v3

    .line 1193
    .local v3, "displayContextTemp":Landroid/content/Context;
    if-eqz v3, :cond_0

    .line 1194
    new-instance v4, Landroid/view/ContextThemeWrapper;

    const v5, 0x103012b

    invoke-direct {v4, v3, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v4

    .line 1199
    .end local v2    # "displays":[Landroid/view/Display;
    .end local v3    # "displayContextTemp":Landroid/content/Context;
    :cond_0
    return-object v0
.end method

.method private blacklist semGetFocusInDesktopState(Z)Z
    .locals 7
    .param p1, "isDexDualMode"    # Z

    .line 1161
    const-string v0, "Toast"

    iget v1, p0, Landroid/widget/Toast;->mCustomDisplayId:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 1162
    if-ne v1, v3, :cond_1

    .line 1163
    return v2

    .line 1166
    :cond_0
    if-eqz p1, :cond_1

    .line 1167
    const/4 v1, 0x0

    .line 1170
    .local v1, "focusDisplayId":I
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v4

    .line 1171
    .local v4, "wm":Landroid/view/IWindowManager;
    invoke-interface {v4}, Landroid/view/IWindowManager;->getTopFocusedDisplayId()I

    move-result v5

    move v1, v5

    .line 1172
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFocusInDesktopState: focusDisplayId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1175
    nop

    .end local v4    # "wm":Landroid/view/IWindowManager;
    goto :goto_0

    .line 1173
    :catch_0
    move-exception v4

    .line 1174
    .local v4, "ex":Landroid/os/RemoteException;
    const-string v5, "Unable to get focusedDisplayId"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    .end local v4    # "ex":Landroid/os/RemoteException;
    :goto_0
    if-ne v1, v3, :cond_1

    .line 1178
    return v2

    .line 1182
    .end local v1    # "focusDisplayId":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist semGetMessageFromTv(Landroid/view/View;)Ljava/lang/String;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 1203
    if-eqz p1, :cond_0

    .line 1204
    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1205
    .local v0, "tv":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1206
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1207
    .local v1, "cs":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 1208
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1212
    .end local v0    # "tv":Landroid/view/View;
    .end local v1    # "cs":Ljava/lang/CharSequence;
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static whitelist semMakeAction(Landroid/content/Context;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/widget/Toast;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I
    .param p3, "action"    # Ljava/lang/CharSequence;
    .param p4, "listener"    # Landroid/view/View$OnClickListener;

    .line 1107
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist addCallback(Landroid/widget/Toast$Callback;)V
    .locals 2
    .param p1, "callback"    # Landroid/widget/Toast$Callback;

    .line 698
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    iget-object v0, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 700
    :try_start_0
    iget-object v1, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    monitor-exit v0

    .line 702
    return-void

    .line 701
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist cancel()V
    .locals 3

    .line 479
    const-wide/32 v0, 0x8cf3b87

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 482
    :try_start_0
    invoke-static {}, Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->cancelToast(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 483
    :catch_0
    move-exception v0

    .line 485
    :goto_0
    goto :goto_1

    .line 487
    :cond_0
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {v0}, Landroid/widget/Toast$TN;->cancel()V

    .line 489
    :goto_1
    return-void
.end method

.method public whitelist getDuration()I
    .locals 1

    .line 556
    iget v0, p0, Landroid/widget/Toast;->mDuration:I

    return v0
.end method

.method public whitelist getGravity()I
    .locals 2

    .line 647
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    const-string v0, "Toast"

    const-string v1, "getGravity() shouldn\'t be called on text toasts, the result may not reflect actual values."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_0
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mGravity:I

    return v0
.end method

.method public whitelist getHorizontalMargin()F
    .locals 2

    .line 590
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    const-string v0, "Toast"

    const-string v1, "getHorizontalMargin() shouldn\'t be called on text toasts, the result may not reflect actual values."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_0
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    return v0
.end method

.method public whitelist getVerticalMargin()F
    .locals 2

    .line 606
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    const-string v0, "Toast"

    const-string v1, "getVerticalMargin() shouldn\'t be called on text toasts, the result may not reflect actual values."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_0
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    return v0
.end method

.method public whitelist getView()Landroid/view/View;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 537
    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    return-object v0
.end method

.method public greylist getWindowParams()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .line 719
    const-wide/32 v0, 0x8cf3b87

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 720
    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-static {v0}, Landroid/widget/Toast$TN;->-$$Nest$fgetmParams(Landroid/widget/Toast$TN;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0

    .line 725
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 729
    :cond_1
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-static {v0}, Landroid/widget/Toast$TN;->-$$Nest$fgetmParams(Landroid/widget/Toast$TN;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getXOffset()I
    .locals 2

    .line 663
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    const-string v0, "Toast"

    const-string v1, "getXOffset() shouldn\'t be called on text toasts, the result may not reflect actual values."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_0
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mX:I

    return v0
.end method

.method public whitelist getYOffset()I
    .locals 2

    .line 679
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    const-string v0, "Toast"

    const-string v1, "getYOffset() shouldn\'t be called on text toasts, the result may not reflect actual values."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_0
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mY:I

    return v0
.end method

.method public whitelist removeCallback(Landroid/widget/Toast$Callback;)V
    .locals 2
    .param p1, "callback"    # Landroid/widget/Toast$Callback;

    .line 708
    iget-object v0, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 709
    :try_start_0
    iget-object v1, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 710
    monitor-exit v0

    .line 711
    return-void

    .line 710
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist semSetPreferredDisplayType(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 1121
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1122
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/Toast;->mCustomDisplayId:I

    goto :goto_0

    .line 1124
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Toast;->mCustomDisplayId:I

    .line 1126
    :goto_0
    return-void
.end method

.method public whitelist setDuration(I)V
    .locals 1
    .param p1, "duration"    # I

    .line 546
    iput p1, p0, Landroid/widget/Toast;->mDuration:I

    .line 547
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p1, v0, Landroid/widget/Toast$TN;->mDuration:I

    .line 548
    return-void
.end method

.method public whitelist setGravity(III)V
    .locals 2
    .param p1, "gravity"    # I
    .param p2, "xOffset"    # I
    .param p3, "yOffset"    # I

    .line 624
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    const-string v0, "Toast"

    const-string/jumbo v1, "setGravity() shouldn\'t be called on text toasts, the values won\'t be used"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_0
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p1, v0, Landroid/widget/Toast$TN;->mGravity:I

    .line 628
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p2, v0, Landroid/widget/Toast$TN;->mX:I

    .line 629
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p3, v0, Landroid/widget/Toast$TN;->mY:I

    .line 631
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/Toast$TN;->mIsCustomOffset:Z

    .line 633
    return-void
.end method

.method public whitelist setMargin(FF)V
    .locals 2
    .param p1, "horizontalMargin"    # F
    .param p2, "verticalMargin"    # F

    .line 574
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    const-string v0, "Toast"

    const-string/jumbo v1, "setMargin() shouldn\'t be called on text toasts, the values won\'t be used"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_0
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p1, v0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    .line 578
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p2, v0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    .line 579
    return-void
.end method

.method public whitelist setText(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 791
    iget-object v0, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 792
    return-void
.end method

.method public whitelist setText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 799
    const-wide/32 v0, 0x8cf3b87

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 800
    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 805
    iput-object p1, p0, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 801
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Text provided for custom toast, remove previous setView() calls if you want a text toast instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 807
    :cond_1
    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    const-string v1, "This Toast was not created with Toast.makeText()"

    if-eqz v0, :cond_3

    .line 810
    const v2, 0x102000b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 811
    .local v0, "tv":Landroid/widget/TextView;
    if-eqz v0, :cond_2

    .line 814
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 816
    .end local v0    # "tv":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 812
    .restart local v0    # "tv":Landroid/widget/TextView;
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 808
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 508
    move-object v0, p1

    .line 509
    .local v0, "v":Landroid/view/View;
    iput-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    .line 510
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Toast;->mIsCustomToast:Z

    .line 511
    const-string v1, "Toast"

    const-string/jumbo v2, "setView: it\'s a custom toast"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    return-void
.end method

.method public whitelist show()V
    .locals 17

    .line 283
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 285
    .local v0, "knoxCustomManager":Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;

    move-result-object v2

    .line 286
    .end local v0    # "knoxCustomManager":Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;
    .local v2, "knoxCustomManager":Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;
    const-string v3, "Toast"

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;->getToastEnabledState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    const-string v0, "Knox Customization: Not showing toast"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void

    .line 293
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/Toast;->checkGameHomeAllowList()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    return-void

    .line 299
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/Toast;->isSpeg()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 300
    return-void

    .line 304
    :cond_2
    const-wide/32 v4, 0x8cf3b87

    invoke-static {v4, v5}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_5

    .line 305
    iget-object v0, v1, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-nez v0, :cond_4

    iget-object v0, v1, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v6

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v7

    :goto_1
    const-string v8, "You must either set a text or a view"

    invoke-static {v0, v8}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    goto :goto_2

    .line 307
    :cond_5
    iget-object v0, v1, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 312
    :goto_2
    iget-object v0, v1, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget-boolean v8, v1, Landroid/widget/Toast;->mIsCustomToast:Z

    iput-boolean v8, v0, Landroid/widget/Toast$TN;->mIsCustomView:Z

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "show: caller = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/Toast;->isDexDualModeEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 317
    .local v0, "isDexDualMode":Z
    invoke-direct {v1, v0}, Landroid/widget/Toast;->semGetFocusInDesktopState(Z)Z

    move-result v8

    .line 318
    .local v8, "isFocusInDesktop":Z
    iget-object v9, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-direct {v1, v9}, Landroid/widget/Toast;->getActivityContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v9

    if-eqz v9, :cond_6

    move v9, v7

    goto :goto_3

    :cond_6
    move v9, v6

    .line 319
    .local v9, "isActivityContext":Z
    :goto_3
    const/4 v10, 0x0

    iput-object v10, v1, Landroid/widget/Toast;->mDisplayContext:Landroid/content/Context;

    .line 321
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "show: isFocusInDesktop = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mCustomDisplayId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v1, Landroid/widget/Toast;->mCustomDisplayId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " isDexDualMode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " isActivityContext = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-boolean v11, v1, Landroid/widget/Toast;->mIsCustomToast:Z

    if-nez v11, :cond_7

    if-nez v9, :cond_7

    if-eqz v8, :cond_7

    if-eqz v0, :cond_7

    .line 331
    iget-object v11, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 332
    invoke-direct/range {p0 .. p0}, Landroid/widget/Toast;->semCreateDisplayContextForDex()Landroid/content/Context;

    move-result-object v11

    iput-object v11, v1, Landroid/widget/Toast;->mDisplayContext:Landroid/content/Context;

    .line 339
    .end local v0    # "isDexDualMode":Z
    .end local v8    # "isFocusInDesktop":Z
    .end local v9    # "isActivityContext":Z
    :cond_7
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;->getToastShowPackageNameState()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 342
    iget-object v0, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 343
    .local v8, "pm":Landroid/content/pm/PackageManager;
    iget-object v0, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 344
    .local v9, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 345
    .local v11, "appName":Ljava/lang/String;
    iget-object v0, v1, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    const/16 v12, 0x3c

    const/16 v13, 0x3e

    const-string v14, "Exception thrown :"

    const/4 v15, 0x2

    const-string v10, "%1s: %2s"

    if-eqz v0, :cond_9

    .line 346
    const v4, 0x102000b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    .line 347
    .local v4, "tv":Landroid/widget/TextView;
    if-eqz v4, :cond_8

    if-eqz v11, :cond_8

    .line 348
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 351
    :try_start_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 352
    .local v0, "spannedText":Landroid/text/Spanned;
    invoke-static {v0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v5

    .line 354
    .local v5, "oldText":Ljava/lang/String;
    invoke-virtual {v5, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 355
    .local v13, "idx1":I
    invoke-virtual {v5, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    .line 356
    .local v12, "idx2":I
    new-array v7, v15, [Ljava/lang/Object;

    aput-object v11, v7, v6

    add-int/lit8 v6, v13, 0x1

    invoke-virtual {v5, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v16, 0x1

    aput-object v6, v7, v16

    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    .end local v0    # "spannedText":Landroid/text/Spanned;
    .end local v5    # "oldText":Ljava/lang/String;
    .end local v12    # "idx2":I
    .end local v13    # "idx1":I
    goto :goto_4

    .line 357
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v3, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 361
    .restart local v5    # "oldText":Ljava/lang/String;
    new-array v6, v15, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v11, v6, v7

    const/4 v7, 0x1

    aput-object v5, v6, v7

    invoke-static {v10, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "tv":Landroid/widget/TextView;
    .end local v5    # "oldText":Ljava/lang/String;
    :cond_8
    :goto_4
    goto :goto_5

    .line 365
    :cond_9
    if-eqz v11, :cond_a

    iget-object v0, v1, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 367
    :try_start_1
    new-instance v0, Landroid/text/SpannableString;

    iget-object v4, v1, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 368
    .local v0, "spannedText":Landroid/text/Spanned;
    invoke-static {v0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v4

    .line 370
    .local v4, "oldText":Ljava/lang/String;
    invoke-virtual {v4, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 371
    .local v5, "idx1":I
    invoke-virtual {v4, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 372
    .local v6, "idx2":I
    new-array v7, v15, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v11, v7, v12

    add-int/lit8 v12, v5, 0x1

    invoke-virtual {v4, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v7, v13

    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    iput-object v7, v1, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 377
    .end local v0    # "spannedText":Landroid/text/Spanned;
    .end local v4    # "oldText":Ljava/lang/String;
    .end local v5    # "idx1":I
    .end local v6    # "idx2":I
    goto :goto_5

    .line 373
    :catch_1
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v3, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    new-array v4, v15, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    iget-object v5, v1, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v10, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    .line 384
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v9    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "appName":Ljava/lang/String;
    :cond_a
    :goto_5
    iget-boolean v0, v1, Landroid/widget/Toast;->mIsCustomToast:Z

    if-nez v0, :cond_b

    iget-object v0, v1, Landroid/widget/Toast;->mDisplayContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    .line 385
    iget-object v4, v1, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    invoke-static {v0, v4}, Landroid/widget/ToastPresenter;->getTextToastView(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/Toast;->mNextViewForDex:Landroid/view/View;

    .line 386
    sget-boolean v0, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "show: new view = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Landroid/widget/Toast;->mNextViewForDex:Landroid/view/View;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_b
    iget-object v0, v1, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget-boolean v0, v0, Landroid/widget/Toast$TN;->mIsCustomOffset:Z

    if-nez v0, :cond_d

    .line 390
    iget-object v0, v1, Landroid/widget/Toast;->mDisplayContext:Landroid/content/Context;

    const v4, 0x105050f

    if-eqz v0, :cond_c

    .line 391
    iget-object v5, v1, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v5, Landroid/widget/Toast$TN;->mY:I

    goto :goto_6

    .line 394
    :cond_c
    iget-object v0, v1, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget-object v5, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/widget/Toast$TN;->mY:I

    .line 401
    :cond_d
    :goto_6
    invoke-static {}, Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;

    move-result-object v4

    .line 402
    .local v4, "service":Landroid/app/INotificationManager;
    iget-object v0, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v14

    .line 403
    .local v14, "pkg":Ljava/lang/String;
    iget-object v15, v1, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    .line 406
    .local v15, "tn":Landroid/widget/Toast$TN;
    iget-object v0, v1, Landroid/widget/Toast;->mNextViewForDex:Landroid/view/View;

    if-eqz v0, :cond_e

    goto :goto_7

    :cond_e
    iget-object v0, v1, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    :goto_7
    iput-object v0, v15, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    .line 410
    iget-object v0, v1, Landroid/widget/Toast;->mDisplayContext:Landroid/content/Context;

    if-eqz v0, :cond_f

    goto :goto_8

    :cond_f
    iget-object v0, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    :goto_8
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 411
    .local v0, "displayId":I
    iget v5, v1, Landroid/widget/Toast;->mCustomDisplayId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_10

    .line 412
    iget v0, v1, Landroid/widget/Toast;->mCustomDisplayId:I

    move/from16 v16, v0

    goto :goto_9

    .line 411
    :cond_10
    move/from16 v16, v0

    .line 416
    .end local v0    # "displayId":I
    .local v16, "displayId":I
    :goto_9
    const/4 v5, -0x1

    .line 418
    .local v5, "uid":I
    :try_start_2
    iget-object v0, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 419
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    invoke-virtual {v0, v14, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 420
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    iget v3, v6, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v5, v3

    .line 423
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_a

    .line 421
    :catch_2
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "show: cannot get uid!!!"

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v5

    .line 426
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "uid":I
    .local v3, "uid":I
    :goto_a
    if-eqz v4, :cond_14

    .line 428
    const-wide/32 v5, 0x8cf3b87

    :try_start_3
    invoke-static {v5, v6}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 429
    iget-object v0, v1, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 431
    iget-object v7, v1, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    iget v9, v1, Landroid/widget/Toast;->mDuration:I

    .line 432
    invoke-direct {v1, v0}, Landroid/widget/Toast;->semGetMessageFromTv(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    .line 431
    move-object v5, v4

    move-object v6, v14

    move-object v8, v15

    move/from16 v10, v16

    move v12, v3

    invoke-interface/range {v5 .. v12}, Landroid/app/INotificationManager;->enqueueToastForDex(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/ITransientNotification;IILjava/lang/String;I)V

    goto :goto_c

    .line 435
    :cond_11
    new-instance v11, Landroid/widget/Toast$CallbackBinder;

    iget-object v0, v1, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    iget-object v5, v1, Landroid/widget/Toast;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-direct {v11, v0, v5, v6}, Landroid/widget/Toast$CallbackBinder;-><init>(Ljava/util/List;Landroid/os/Handler;Landroid/widget/Toast$CallbackBinder-IA;)V

    .line 437
    .local v11, "callback":Landroid/app/ITransientNotificationCallback;
    iget-object v7, v1, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    iget-object v8, v1, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    iget v9, v1, Landroid/widget/Toast;->mDuration:I

    .line 438
    if-eqz v8, :cond_12

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_12
    const-string v0, ""

    :goto_b
    move-object v12, v0

    .line 437
    move-object v5, v4

    move-object v6, v14

    move/from16 v10, v16

    move v13, v3

    invoke-interface/range {v5 .. v13}, Landroid/app/INotificationManager;->enqueueTextToastForDex(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;IILandroid/app/ITransientNotificationCallback;Ljava/lang/String;I)V

    .line 439
    .end local v11    # "callback":Landroid/app/ITransientNotificationCallback;
    goto :goto_c

    .line 441
    :cond_13
    iget-object v7, v1, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    iget v9, v1, Landroid/widget/Toast;->mDuration:I

    iget-object v0, v1, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    .line 442
    invoke-direct {v1, v0}, Landroid/widget/Toast;->semGetMessageFromTv(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    .line 441
    move-object v5, v4

    move-object v6, v14

    move-object v8, v15

    move/from16 v10, v16

    move v12, v3

    invoke-interface/range {v5 .. v12}, Landroid/app/INotificationManager;->enqueueToastForDex(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/ITransientNotification;IILjava/lang/String;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 446
    :goto_c
    goto :goto_d

    .line 444
    :catch_3
    move-exception v0

    .line 471
    :cond_14
    :goto_d
    return-void

    .line 308
    .end local v3    # "uid":I
    .end local v4    # "service":Landroid/app/INotificationManager;
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v15    # "tn":Landroid/widget/Toast$TN;
    .end local v16    # "displayId":I
    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "setView must have been called"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
