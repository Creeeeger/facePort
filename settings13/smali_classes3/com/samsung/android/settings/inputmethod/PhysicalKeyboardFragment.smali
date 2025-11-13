.class public final Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "PhysicalKeyboardFragment.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;,
        Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;,
        Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;,
        Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;,
        Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Callbacks;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private final MSG_UI_UPDATE:I

.field private final WKS_CONNECTED:I

.field private final WKS_FOCUSED_DEVICE:I

.field private final WKS_HOST:I

.field private final WKS_HOSTLIST:I

.field private final WKS_MODE:I

.field private final WKS_REGISTERED:I

.field private mAutomataLanguageLocaleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mChangeLanguageShortcut:Landroidx/preference/SecPreferenceScreen;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mIm:Landroid/hardware/input/InputManager;

.field private mKeyboardAssistanceCategory:Landroidx/preference/SecPreferenceCategory;

.field private final mLastHardKeyboards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoaderIDs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNextLoaderId:I

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

.field private mShareKeyboard:Landroidx/preference/SecPreferenceScreen;

.field private mShowVirtualKeyboardSwitch:Landroidx/preference/SecSwitchPreference;

.field private mShowVirtualKeyboardSwitchForDeX:Landroidx/preference/SecSwitchPreference;

.field private final mShowVirtualKeyboardSwitchForDexObserver:Landroid/database/ContentObserver;

.field private final mShowVirtualKeyboardSwitchPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field private final mTempKeyboardInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mWirelessKeybaordShareContentObserver:Landroid/database/ContentObserver;

.field private mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

.field private mWirelessKeyboardShareUiHandler:Landroid/os/Handler;

.field private mWirelessKeyboardSharing:Landroidx/preference/SecPreferenceCategory;

.field private onWirelessKeyboardShareChangedListener:Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListener;


# direct methods
.method public static synthetic $r8$lambda$E0SibP-ULSLe8tn2iL11PdWacTg(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;JILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->lambda$registerWksChangedListener$3(JILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FoJS4CLz19_1Phq-0IsCP8RRIPs(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->lambda$new$2(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PG0RIk9k2KMHwZuCkFmbwQnaaEI(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->lambda$onLoadFinishedInternal$0(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Plo4qEiUyi1pI6jFTUPNoscGocI(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->lambda$onLoadFinishedInternal$1(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWirelessKeyboardShareDBUtil(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWirelessKeyboardShareUiHandler(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeyboardShareUiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monLoadFinishedInternal(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->onLoadFinishedInternal(ILjava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msyncStatus(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->syncStatus()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtoggleKeyboardShortcutsMenu(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->toggleKeyboardShortcutsMenu()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateShowVirtualKeyboardSwitch(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->updateShowVirtualKeyboardSwitch()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateShowVirtualKeyboardSwitchForDex(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->updateShowVirtualKeyboardSwitchForDex()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smisDesktopEnabled(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->isDesktopEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisExistPogoKeyboard()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->isExistPogoKeyboard()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 931
    new-instance v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 90
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/List;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mTempKeyboardInfoList:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mLoaderIDs:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 116
    iput v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mNextLoaderId:I

    .line 143
    iput v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->MSG_UI_UPDATE:I

    .line 145
    iput v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->WKS_CONNECTED:I

    const/4 v0, 0x1

    .line 146
    iput v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->WKS_HOST:I

    const/4 v1, 0x2

    .line 147
    iput v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->WKS_FOCUSED_DEVICE:I

    const/4 v1, 0x3

    .line 148
    iput v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->WKS_HOSTLIST:I

    const/4 v1, 0x4

    .line 149
    iput v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->WKS_MODE:I

    const/4 v1, 0x5

    .line 150
    iput v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->WKS_REGISTERED:I

    const/4 v1, 0x0

    .line 158
    iput-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    .line 573
    new-instance v1, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Z)V

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$2;-><init>(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchForDexObserver:Landroid/database/ContentObserver;

    .line 599
    new-instance v1, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;)V

    iput-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 612
    new-instance v1, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$3;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Z)V

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$3;-><init>(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private clearLoader()V
    .locals 3

    .line 540
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mLoaderIDs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 541
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    goto :goto_0

    .line 543
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mLoaderIDs:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method private getAutomataKeyboardLocaleList()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "NAME"

    const-string v1, ""

    const-string v2, "automata_language_locale_list"

    .line 419
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v7

    .line 421
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->isHoneyboardSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "content://com.samsung.android.honeyboard.provider.KeyboardSettingsProvider"

    goto :goto_0

    :cond_0
    const-string v3, "content://com.sec.android.inputmethod.implement.setting.provider.KeyboardSettingsProvider"

    :goto_0
    const/4 v9, 0x0

    .line 426
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 427
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 426
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 430
    :cond_1
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 431
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    const/4 v3, -0x1

    if-eq p0, v3, :cond_1

    .line 433
    invoke-interface {v9, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 434
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 435
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v9, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "VALUE"

    .line 436
    invoke-interface {v9, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v9, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    if-eqz v9, :cond_4

    .line 447
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p0

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 449
    :cond_3
    throw p0

    :catch_0
    if-eqz v9, :cond_4

    goto :goto_2

    .line 451
    :cond_4
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 452
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 454
    array-length v1, p0

    if-lez v1, :cond_5

    const/4 v1, 0x0

    .line 455
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_5

    .line 456
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aAutomataResult["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PhysicalKeyboardFragment"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    return-object v0
.end method

.method public static getHardKeyboards()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 499
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v1

    .line 500
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 501
    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 502
    invoke-virtual {v4}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 503
    new-instance v5, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    invoke-virtual {v4}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;-><init>(Ljava/lang/String;Landroid/hardware/input/InputDeviceIdentifier;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static isDesktopEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 894
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isExistPogoKeyboard()Z
    .locals 6

    .line 968
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    .line 969
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 970
    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 971
    invoke-virtual {v4}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 972
    new-instance v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    .line 973
    invoke-virtual {v4}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;-><init>(Ljava/lang/String;Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 974
    invoke-static {v0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->isPogoKeyboard(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;)Z

    move-result v0

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private isInAutomataLanguageList(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 400
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mAutomataLanguageLocaleList:Ljava/util/ArrayList;

    if-nez p0, :cond_1

    return v0

    .line 404
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 405
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method private static isPogoKeyboard(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;)Z
    .locals 3

    .line 305
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v0}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v0

    .line 306
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v1

    .line 307
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceName:Ljava/lang/String;

    const/16 v2, 0x4e8

    if-ne v0, v2, :cond_0

    const v0, 0xa035

    if-eq v1, v0, :cond_1

    :cond_0
    const-string v0, "Tab S3 Book Cover Keyboard"

    .line 310
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$2(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 602
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "show_virtual_keyboard_switch_for_dex"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 603
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "keyboard_dex"

    invoke-static {p0, p2, p1}, Lcom/android/settings/Utils;->setDeXSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 605
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 606
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "show_ime_with_hard_keyboard"

    .line 605
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 607
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->getMetricsCategory()I

    move-result p0

    const/16 p1, 0x1f59

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onLoadFinishedInternal$0(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;Landroidx/preference/Preference;)Z
    .locals 4

    .line 356
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->ime_physical_automata_keyboard_language:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 357
    invoke-virtual {p1}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->getSubTypeName()Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 356
    invoke-virtual {p2, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 358
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1
.end method

.method private synthetic lambda$onLoadFinishedInternal$1(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Landroidx/preference/Preference;)Z
    .locals 0

    .line 363
    iget-object p1, p1, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;->mDeviceInfo:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    iget-object p1, p1, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->showKeyboardLayoutScreen(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$registerWksChangedListener$3(JILjava/lang/String;)V
    .locals 2

    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "whenNanos : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " index : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " contents : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PhysicalKeyboardFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    invoke-virtual {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->syncData()V

    const-string p1, "true"

    if-eqz p3, :cond_5

    const/4 p2, 0x1

    if-eq p3, p2, :cond_4

    const/4 p2, 0x2

    if-eq p3, p2, :cond_3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_2

    const/4 p2, 0x4

    if-eq p3, p2, :cond_1

    const/4 v0, 0x5

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 1063
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    .line 1065
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 1063
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->save(IZ)V

    goto :goto_0

    .line 1059
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    .line 1060
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 1059
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->save(IZ)V

    goto :goto_0

    .line 1055
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    invoke-virtual {p0, p2, p4}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->save(ILjava/lang/String;)V

    goto :goto_0

    .line 1051
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    const/4 p1, 0x7

    invoke-virtual {p0, p1, p4}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->save(ILjava/lang/String;)V

    goto :goto_0

    .line 1047
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    invoke-virtual {p0, p2, p4}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->save(ILjava/lang/String;)V

    goto :goto_0

    .line 1042
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    const/4 p2, 0x0

    .line 1044
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 1042
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->save(IZ)V

    :goto_0
    return-void
.end method

.method private onLoadFinishedInternal(ILjava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 319
    iget-object v1, v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mLoaderIDs:Ljava/util/HashSet;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 324
    :cond_0
    invoke-static/range {p2 .. p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 325
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    .line 326
    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    const/4 v2, 0x0

    .line 327
    iput-object v2, v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    .line 331
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;

    .line 332
    new-instance v8, Landroidx/preference/SecPreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Landroidx/preference/SecPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 333
    iget-object v9, v6, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;->mDeviceInfo:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    iget-object v9, v9, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 334
    invoke-virtual {v8, v4}, Landroidx/preference/Preference;->setOrder(I)V

    .line 335
    invoke-virtual {v1, v8}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    if-nez v5, :cond_2

    .line 338
    iget-object v5, v6, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;->mDeviceInfo:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    invoke-static {v5}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->isPogoKeyboard(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;)Z

    move-result v5

    .line 341
    :cond_2
    iget-object v9, v6, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;->mKeyboardInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;

    .line 342
    iget-object v11, v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mTempKeyboardInfoList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 343
    iget-object v11, v10, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 344
    iget-object v12, v10, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;->mImSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v11, :cond_7

    if-eqz v12, :cond_3

    .line 349
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->isInAutomataLanguageList(Ljava/lang/String;)Z

    move-result v13

    .line 350
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "imSubType="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v10, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v14, "PhysicalKeyboardFragment"

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    .line 352
    :goto_1
    new-instance v4, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v4, v14, v10, v13, v2}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;ZLcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference-IA;)V

    .line 354
    invoke-virtual {v4}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->isAutoMataLanguage()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 355
    new-instance v11, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda2;

    invoke-direct {v11, v0, v4}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;)V

    invoke-virtual {v4, v11}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_2

    .line 362
    :cond_4
    new-instance v13, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda3;

    invoke-direct {v13, v0, v6, v11, v12}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    invoke-virtual {v4, v13}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 368
    :goto_2
    invoke-virtual {v4}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->isAutoMataLanguage()Z

    move-result v11

    if-nez v11, :cond_5

    iget-object v10, v10, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;->mLayout:Landroid/hardware/input/KeyboardLayout;

    if-eqz v10, :cond_6

    .line 369
    :cond_5
    invoke-virtual {v4, v7}, Landroidx/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 371
    :cond_6
    iget-object v10, v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mTempKeyboardInfoList:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object v4, v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mTempKeyboardInfoList:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 374
    :cond_7
    iget-object v4, v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mTempKeyboardInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;

    .line 375
    invoke-virtual {v8, v10}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 379
    :cond_9
    iget-object v2, v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mTempKeyboardInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 380
    iget-object v2, v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v2, v7}, Landroidx/preference/Preference;->setOrder(I)V

    .line 381
    iget-object v2, v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 382
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->updateShowVirtualKeyboardSwitch()V

    .line 383
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->updateShowVirtualKeyboardSwitchForDex()V

    .line 385
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v5, :cond_a

    .line 387
    iget-object v2, v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeyboardSharing:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v2, v7}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 388
    iget-object v2, v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeyboardSharing:Landroidx/preference/SecPreferenceCategory;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOrder(I)V

    .line 389
    iget-object v2, v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeyboardSharing:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->updateWirelessKeyboardShare()V

    goto :goto_4

    .line 392
    :cond_a
    iget-object v1, v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeyboardSharing:Landroidx/preference/SecPreferenceCategory;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 396
    :cond_b
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->setRelativeLinkView()V

    return-void
.end method

.method private registerShowVirtualKeyboardSettingsObserver()V
    .locals 5

    .line 547
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->unregisterShowVirtualKeyboardSettingsObserver()V

    .line 548
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_ime_with_hard_keyboard"

    .line 549
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 552
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x0

    .line 548
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 553
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->updateShowVirtualKeyboardSwitch()V

    return-void
.end method

.method private registerShowVirtualKeyboardSwitchForDexObserver()V
    .locals 4

    .line 581
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/settings/Utils;->DEX_SETTINGS_URI:Landroid/net/Uri;

    .line 582
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "settings/keyboard_dex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchForDexObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 581
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 586
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->updateShowVirtualKeyboardSwitchForDex()V

    return-void
.end method

.method private setRelativeLinkView()V
    .locals 4

    .line 902
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportRelativeLink(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    if-nez v0, :cond_2

    .line 903
    new-instance v0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    .line 905
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 906
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v0

    .line 907
    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    if-eqz v0, :cond_0

    .line 911
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MANAGE_DEFAULT_APP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 912
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.ROLE_NAME"

    const-string v3, "android.app.role.ASSISTANT"

    .line 913
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/16 v2, 0x1f5b

    .line 919
    iput v2, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 920
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->getMetricsCategory()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 921
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, ":settings:show_fragment_args"

    .line 922
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 923
    iput-object v0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 924
    sget v0, Lcom/android/settings/R$string;->default_assist_title:I

    iput v0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 925
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    .line 927
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private showKeyboardLayoutScreen(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 2

    .line 526
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "input_device_identifier"

    .line 527
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "input_method_info"

    .line 528
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "input_method_subtype"

    .line 529
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 531
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p2, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;

    .line 532
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 533
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->getMetricsCategory()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 534
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->keyboard_layout_picker_title:I

    .line 535
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 536
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private syncStatus()V
    .locals 6

    const/4 v0, 0x0

    .line 983
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    invoke-virtual {v1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->gethostlist()[Ljava/lang/String;

    move-result-object v1

    move v2, v0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 985
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v1, v2

    iget-object v4, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->loadByString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 987
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    .line 988
    invoke-virtual {v2, v5}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->loadByString(I)Ljava/lang/String;

    move-result-object v2

    .line 987
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 989
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 990
    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShareKeyboard:Landroidx/preference/SecPreferenceScreen;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 991
    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShareKeyboard:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 995
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShareKeyboard:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 996
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShareKeyboard:Landroidx/preference/SecPreferenceScreen;

    sget v2, Lcom/android/settings/R$string;->not_connected:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 998
    :catch_0
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShareKeyboard:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 999
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShareKeyboard:Landroidx/preference/SecPreferenceScreen;

    sget v0, Lcom/android/settings/R$string;->not_connected:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_1
    return-void
.end method

.method private toggleKeyboardShortcutsMenu()V
    .locals 2

    .line 594
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x1f5a

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    const-string v0, "PhysicalKeyboardFragment"

    const-string v1, "toggleKeyboardShortcutsMenu"

    .line 595
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->requestShowKeyboardShortcuts()V

    return-void
.end method

.method private unregisterShowVirtualKeyboardSettingsObserver()V
    .locals 1

    .line 557
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private unregisterShowVirtualKeyboardSwitchForDexObserver()V
    .locals 1

    .line 590
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchForDexObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateHardKeyboards()V
    .locals 6

    .line 510
    invoke-static {}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->getHardKeyboards()Ljava/util/List;

    move-result-object v0

    .line 511
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 512
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->clearLoader()V

    .line 513
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 514
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 515
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mLoaderIDs:Ljava/util/HashSet;

    iget v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mNextLoaderId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 516
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mNextLoaderId:I

    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Callbacks;

    .line 517
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/List;

    invoke-direct {v3, v4, p0, v5}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Callbacks;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;Ljava/util/List;)V

    .line 516
    invoke-virtual {v0, v1, v2, v3}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 518
    iget v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mNextLoaderId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mNextLoaderId:I

    :cond_0
    return-void
.end method

.method private updateShowVirtualKeyboardSwitch()V
    .locals 3

    .line 561
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_1

    .line 563
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "show_ime_with_hard_keyboard"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    .line 562
    :cond_0
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method private updateShowVirtualKeyboardSwitchForDex()V
    .locals 3

    .line 568
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchForDeX:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_0

    .line 569
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "keyboard_dex"

    const-string v2, "0"

    invoke-static {p0, v1, v2}, Lcom/android/settings/Utils;->getStringFromDeXSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PhysicalKeyboardFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x15a

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 163
    sget p0, Lcom/android/settings/R$xml;->sec_physical_keyboard_settings:I

    return p0
.end method

.method public isHoneyboardSupport()Z
    .locals 3

    .line 467
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v0, "SEC_FLOATING_FEATURE_SIP_CONFIG_PACKAGE_NAME"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.samsung.android.honeyboard"

    .line 469
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHoneyboardSupport : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " package name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PhysicalKeyboardFragment"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 173
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 175
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mContext:Landroid/content/Context;

    .line 176
    const-class p2, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/input/InputManager;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/input/InputManager;

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mIm:Landroid/hardware/input/InputManager;

    const-string p2, "keyboard_assistance_category"

    .line 178
    invoke-virtual {p0, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/SecPreferenceCategory;

    .line 177
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/preference/SecPreferenceCategory;

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroidx/preference/SecPreferenceCategory;

    const-string v0, "show_virtual_keyboard_switch"

    .line 180
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/SecSwitchPreference;

    .line 179
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/preference/SecSwitchPreference;

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroidx/preference/SecSwitchPreference;

    const-string p2, "change_language_shortcut"

    .line 183
    invoke-virtual {p0, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/SecPreferenceScreen;

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mChangeLanguageShortcut:Landroidx/preference/SecPreferenceScreen;

    .line 185
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->getAutomataKeyboardLocaleList()Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mAutomataLanguageLocaleList:Ljava/util/ArrayList;

    .line 188
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "wireless_keyboard_sharing"

    .line 190
    invoke-virtual {p0, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/SecPreferenceCategory;

    .line 189
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/preference/SecPreferenceCategory;

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeyboardSharing:Landroidx/preference/SecPreferenceCategory;

    .line 191
    new-instance p2, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    .line 196
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroidx/preference/SecPreferenceCategory;

    const-string v0, "show_virtual_keyboard_switch_for_dex"

    .line 197
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/SecSwitchPreference;

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchForDeX:Landroidx/preference/SecSwitchPreference;

    .line 198
    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->isDesktopEnabled(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 199
    iget-object p2, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchForDeX:Landroidx/preference/SecSwitchPreference;

    if-eqz p2, :cond_2

    .line 200
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v0, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 203
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroidx/preference/SecSwitchPreference;

    if-eqz p2, :cond_2

    .line 204
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v0, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 209
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexOnPCMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 210
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_3

    .line 211
    iget-object p2, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    const-string p1, "keyboard_shortcuts_helper"

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$1;-><init>(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    .line 478
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->updateHardKeyboards()V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    .line 488
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->updateHardKeyboards()V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0

    .line 483
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->updateHardKeyboards()V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 274
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 275
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->clearLoader()V

    .line 276
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 277
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 280
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->syncData()V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->onWirelessKeyboardShareChangedListener:Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 284
    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v2, v0}, Landroid/hardware/input/InputManager;->unregisterOnWirelessKeyboardShareChangedListener(Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListener;)V

    .line 285
    iput-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->onWirelessKeyboardShareChangedListener:Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListener;

    .line 287
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->unregisterWksObserver()V

    .line 290
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_2

    .line 291
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchForDeX:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/preference/Preference;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 296
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchForDeX:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 297
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->unregisterShowVirtualKeyboardSwitchForDexObserver()V

    .line 300
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->unregisterShowVirtualKeyboardSettingsObserver()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 227
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 228
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->clearLoader()V

    .line 229
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 230
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->updateHardKeyboards()V

    .line 231
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mIm:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_0

    .line 233
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchForDeX:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/preference/Preference;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchForDeX:Landroidx/preference/SecSwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 241
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->registerShowVirtualKeyboardSwitchForDexObserver()V

    .line 244
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->registerShowVirtualKeyboardSettingsObserver()V

    .line 246
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mChangeLanguageShortcut:Landroidx/preference/SecPreferenceScreen;

    .line 247
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/inputmethod/EnableCombinationKeyHelper;->getLanguageShortcutSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mChangeLanguageShortcut:Landroidx/preference/SecPreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 251
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    invoke-static {}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->isExistPogoKeyboard()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->registerWksChangedListener()V

    .line 254
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->registerWksObserver()V

    .line 255
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeyboardSharing:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeyboardSharing:Landroidx/preference/SecPreferenceCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 261
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeyboardSharing:Landroidx/preference/SecPreferenceCategory;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 262
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->syncStatus()V

    .line 267
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->setRelativeLinkView()V

    return-void
.end method

.method registerWksChangedListener()V
    .locals 2

    .line 1035
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->onWirelessKeyboardShareChangedListener:Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListener;

    if-nez v0, :cond_0

    .line 1036
    new-instance v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->onWirelessKeyboardShareChangedListener:Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListener;

    .line 1072
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mIm:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/hardware/input/InputManager;->registerOnWirelessKeyboardShareChangedListener(Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method registerWksObserver()V
    .locals 4

    .line 1004
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeybaordShareContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    const-string v0, "PhysicalKeyboardFragment"

    const-string v1, "create Observer"

    .line 1005
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    new-instance v1, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$5;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$5;-><init>(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeybaordShareContentObserver:Landroid/database/ContentObserver;

    const-string v1, "registerWksObserver"

    .line 1027
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    .line 1029
    invoke-virtual {v1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeybaordShareContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 1028
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
    return-void
.end method

.method unregisterWksObserver()V
    .locals 2

    .line 1078
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeybaordShareContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    const-string v0, "PhysicalKeyboardFragment"

    const-string v1, "unregisterWksObserver"

    .line 1079
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeybaordShareContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 1082
    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeybaordShareContentObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method updateWirelessKeyboardShare()V
    .locals 2

    .line 1087
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v0, "share_keyboard"

    .line 1088
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShareKeyboard:Landroidx/preference/SecPreferenceScreen;

    .line 1089
    sget v1, Lcom/android/settings/R$string;->not_connected:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 1091
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeyboardShareUiHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1092
    new-instance v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$6;-><init>(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeyboardShareUiHandler:Landroid/os/Handler;

    .line 1104
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->registerWksObserver()V

    .line 1105
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->registerWksChangedListener()V

    .line 1107
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->updateWirelessKeyboardShareStatus()V

    .line 1108
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->syncStatus()V

    return-void
.end method
