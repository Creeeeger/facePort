.class public final Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController;
.super Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I = 0x0

.field public static final Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController$Companion;

.field private static final YOUTUBE_PACKAGE:Ljava/lang/String; = "com.google.android.youtube"


# instance fields
.field private final mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController;->Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;-><init>()V

    iput p1, p0, Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController;->mode:I

    return-void
.end method

.method private final dispatchMediaKeyEvent()V
    .locals 3

    new-instance p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    sget-object v0, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    const/16 v2, 0x7e

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method private final isInstalledApp(Ljava/lang/String;)Z
    .locals 3

    sget-object p0, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "/"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {p1, v0, v1, v2}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    array-length v0, p1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    aget-object p1, p1, v1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :catch_0
    :goto_0
    return v1
.end method


# virtual methods
.method public action()Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 6

    iget v0, p0, Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController;->mode:I

    const-string v1, "MediaNotAvailable"

    const/4 v2, 0x2

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "media_button_receiver"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v3, ","

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static {v0, v3, v5, v4}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    new-array v3, v5, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v3, v0

    if-eq v3, v2, :cond_0

    array-length v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    :cond_0
    aget-object v3, v0, v5

    invoke-direct {p0, v3}, Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController;->isInstalledApp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    aget-object v3, v0, v5

    const-string v4, "com.google.android.youtube"

    invoke-static {v3, v4, v5}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    aget-object v0, v0, v5

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController;->dispatchMediaKeyEvent()V

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const/4 v0, 0x1

    const-string/jumbo v1, "success"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object p0

    :cond_4
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method public final getMode()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController;->mode:I

    return p0
.end method
