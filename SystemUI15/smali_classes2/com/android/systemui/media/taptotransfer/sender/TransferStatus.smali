.class public final enum Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

.field public static final enum FAILED:Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

.field public static final enum IN_PROGRESS:Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

.field public static final enum NOT_STARTED:Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

.field public static final enum SUCCEEDED:Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

.field public static final enum TOO_FAR:Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;


# instance fields
.field private final vibrationEffect:Landroid/os/VibrationEffect;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v1

    const-string v5, "NOT_STARTED"

    invoke-direct {v0, v5, v4, v1}, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;-><init>(Ljava/lang/String;ILandroid/os/VibrationEffect;)V

    sput-object v0, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;->NOT_STARTED:Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    new-instance v1, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6, v3, v4}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    move-result-object v3

    const v4, 0x3f333333    # 0.7f

    const/16 v5, 0x46

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v3

    const-string v4, "IN_PROGRESS"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;-><init>(Ljava/lang/String;ILandroid/os/VibrationEffect;)V

    sput-object v1, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;->IN_PROGRESS:Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    new-instance v3, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v6, "SUCCEEDED"

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;-><init>(Ljava/lang/String;ILandroid/os/VibrationEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v3, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;->SUCCEEDED:Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    new-instance v4, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    const/4 v5, 0x3

    invoke-static {v2}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v2

    const-string v6, "FAILED"

    invoke-direct {v4, v6, v5, v2}, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;-><init>(Ljava/lang/String;ILandroid/os/VibrationEffect;)V

    sput-object v4, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;->FAILED:Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    new-instance v2, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string v8, "TOO_FAR"

    const/4 v9, 0x4

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;-><init>(Ljava/lang/String;ILandroid/os/VibrationEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;->TOO_FAR:Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    filled-new-array {v0, v1, v3, v4, v2}, [Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;->$VALUES:[Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/os/VibrationEffect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/VibrationEffect;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;->vibrationEffect:Landroid/os/VibrationEffect;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILandroid/os/VibrationEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;-><init>(Ljava/lang/String;ILandroid/os/VibrationEffect;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;
    .locals 1

    const-class v0, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;
    .locals 1

    sget-object v0, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;->$VALUES:[Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    return-object v0
.end method


# virtual methods
.method public final getVibrationEffect()Landroid/os/VibrationEffect;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;->vibrationEffect:Landroid/os/VibrationEffect;

    return-object p0
.end method
