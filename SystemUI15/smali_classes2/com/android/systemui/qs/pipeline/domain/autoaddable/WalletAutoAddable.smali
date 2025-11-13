.class public final Lcom/android/systemui/qs/pipeline/domain/autoaddable/WalletAutoAddable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/pipeline/domain/model/AutoAddable;


# instance fields
.field public final description:Ljava/lang/String;

.field public final spec:Lcom/android/systemui/qs/pipeline/shared/TileSpec;

.field public final walletController:Lcom/android/systemui/statusbar/policy/WalletController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/WalletController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/android/systemui/qs/pipeline/shared/TileSpec;->Companion:Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "wallet"

    invoke-static {p1}, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;->create(Ljava/lang/String;)Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/domain/autoaddable/WalletAutoAddable;->spec:Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    new-instance p1, Lcom/android/systemui/qs/pipeline/domain/model/AutoAddTracking$IfNotAdded;

    iget-object v0, p0, Lcom/android/systemui/qs/pipeline/domain/autoaddable/WalletAutoAddable;->spec:Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    invoke-direct {p1, v0}, Lcom/android/systemui/qs/pipeline/domain/model/AutoAddTracking$IfNotAdded;-><init>(Lcom/android/systemui/qs/pipeline/shared/TileSpec;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WalletAutoAddable ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/domain/autoaddable/WalletAutoAddable;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/domain/autoaddable/WalletAutoAddable;->description:Ljava/lang/String;

    return-object p0
.end method
