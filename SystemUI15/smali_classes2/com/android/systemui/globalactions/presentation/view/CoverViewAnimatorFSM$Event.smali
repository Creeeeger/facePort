.class public final enum Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

.field public static final enum COVER_TOAST:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

.field public static final enum HIDE:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

.field public static final enum HIDE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

.field public static final enum SECURE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

.field public static final enum SHOW:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

.field public static final enum SHOW_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    const-string v1, "SHOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->SHOW:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    const-string v2, "HIDE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->HIDE:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    new-instance v2, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    const-string v3, "SHOW_CONFIRM"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->SHOW_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    new-instance v3, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    const-string v4, "HIDE_CONFIRM"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->HIDE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    new-instance v4, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    const-string v5, "CONFIGURATION_CHANGED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    const-string v6, "SECURE_CONFIRM"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->SECURE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    new-instance v6, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    const-string v7, "COVER_TOAST"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->COVER_TOAST:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    filled-new-array/range {v0 .. v6}, [Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->$VALUES:[Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;
    .locals 1

    const-class v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;
    .locals 1

    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->$VALUES:[Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    invoke-virtual {v0}, [Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    return-object v0
.end method
