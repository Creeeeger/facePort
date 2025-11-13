.class public final enum Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

.field public static final enum NONE:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

.field public static final enum STARTED:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

.field public static final enum STARTING:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

.field public static final enum STOPPED:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

.field public static final enum STOPPING:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;->NONE:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    new-instance v1, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    const-string v2, "STARTING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;->STARTING:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    new-instance v2, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    const-string v3, "STARTED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;->STARTED:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    new-instance v3, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    const-string v4, "STOPPING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;->STOPPING:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    new-instance v4, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    const-string v5, "STOPPED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;->STOPPED:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;->$VALUES:[Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;->$VALUES:[Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    return-object v0
.end method
