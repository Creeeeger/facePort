.class public final Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$19$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$19$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$19$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$19$1$1$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$19$1$1$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
