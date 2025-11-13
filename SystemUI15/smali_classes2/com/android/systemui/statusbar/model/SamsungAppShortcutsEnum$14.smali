.class final enum Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$14;
.super Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    const-string v0, "CMD_S"

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$14;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public final getKshInfo(Landroid/content/Context;Lcom/android/systemui/statusbar/model/KshDataUtils;)Landroid/view/KeyboardShortcutInfo;
    .locals 2

    const-string p0, "app_shortcuts_command_s"

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/model/KshDataUtils;->getPackageInfoForSetting(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    new-instance p1, Landroid/view/KeyboardShortcutInfo;

    iget-object p2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/CharSequence;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Icon;

    const/16 v0, 0x2f

    const/high16 v1, 0x10000

    invoke-direct {p1, p2, p0, v0, v1}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    return-object p1
.end method
