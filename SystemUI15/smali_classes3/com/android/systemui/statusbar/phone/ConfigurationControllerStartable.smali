.class public final Lcom/android/systemui/statusbar/phone/ConfigurationControllerStartable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final listeners:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/ConfigurationController;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Ljava/util/Set<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerStartable;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerStartable;->listeners:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerStartable;->listeners:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerStartable;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
