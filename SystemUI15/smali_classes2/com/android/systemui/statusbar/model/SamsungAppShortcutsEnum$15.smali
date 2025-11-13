.class final enum Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$15;
.super Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    const-string v0, "CMD_Y"

    const/16 v1, 0xe

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$15;-><init>(Ljava/lang/String;I)V

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

    new-instance p0, Landroid/view/KeyboardShortcutInfo;

    const v0, 0x7f130aaa

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.smartmirroring"

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/model/KshDataUtils;->getIconForPackageName(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object p2

    const/16 v0, 0x35

    const/high16 v1, 0x10000

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    return-object p0
.end method
