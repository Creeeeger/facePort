.class public abstract Lcom/android/systemui/qs/pipeline/domain/autoaddable/CallbackControllerAutoAddable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/pipeline/domain/model/AutoAddable;


# instance fields
.field public final controller:Lcom/android/systemui/statusbar/policy/CallbackController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/CallbackController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/CallbackController;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutoAddTracking()Lcom/android/systemui/qs/pipeline/domain/model/AutoAddTracking;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/pipeline/domain/model/AutoAddTracking$IfNotAdded;

    invoke-virtual {p0}, Lcom/android/systemui/qs/pipeline/domain/autoaddable/CallbackControllerAutoAddable;->getSpec()Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/pipeline/domain/model/AutoAddTracking$IfNotAdded;-><init>(Lcom/android/systemui/qs/pipeline/shared/TileSpec;)V

    return-object v0
.end method

.method public abstract getSpec()Lcom/android/systemui/qs/pipeline/shared/TileSpec;
.end method
