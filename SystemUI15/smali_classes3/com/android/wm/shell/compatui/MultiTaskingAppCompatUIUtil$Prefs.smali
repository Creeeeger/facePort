.class public final enum Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$Prefs;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$Prefs;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$Prefs;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$Prefs;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$Prefs;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$Prefs;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$Prefs;->$VALUES:[Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$Prefs;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$Prefs;
    .locals 1

    const-class v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$Prefs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$Prefs;

    return-object p0
.end method

.method public static values()[Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$Prefs;
    .locals 1

    sget-object v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$Prefs;->$VALUES:[Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$Prefs;

    invoke-virtual {v0}, [Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$Prefs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$Prefs;

    return-object v0
.end method
