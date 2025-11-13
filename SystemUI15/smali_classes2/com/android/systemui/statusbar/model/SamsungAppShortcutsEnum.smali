.class public abstract enum Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$1;-><init>()V

    new-instance v1, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$2;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$2;-><init>()V

    new-instance v2, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$3;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$3;-><init>()V

    new-instance v3, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$4;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$4;-><init>()V

    new-instance v4, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$5;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$5;-><init>()V

    new-instance v5, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$6;

    invoke-direct {v5}, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$6;-><init>()V

    new-instance v6, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$7;

    invoke-direct {v6}, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$7;-><init>()V

    new-instance v7, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$8;

    invoke-direct {v7}, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$8;-><init>()V

    new-instance v8, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$9;

    invoke-direct {v8}, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$9;-><init>()V

    new-instance v9, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$10;

    invoke-direct {v9}, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$10;-><init>()V

    new-instance v10, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$11;

    invoke-direct {v10}, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$11;-><init>()V

    new-instance v11, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$12;

    invoke-direct {v11}, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$12;-><init>()V

    new-instance v12, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$13;

    invoke-direct {v12}, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$13;-><init>()V

    new-instance v13, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$14;

    invoke-direct {v13}, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$14;-><init>()V

    new-instance v14, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$15;

    invoke-direct {v14}, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$15;-><init>()V

    new-instance v15, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$16;

    invoke-direct {v15}, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$16;-><init>()V

    filled-new-array/range {v0 .. v15}, [Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum;->$VALUES:[Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum;->$VALUES:[Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum;

    return-object v0
.end method


# virtual methods
.method public abstract getKshInfo(Landroid/content/Context;Lcom/android/systemui/statusbar/model/KshDataUtils;)Landroid/view/KeyboardShortcutInfo;
.end method
