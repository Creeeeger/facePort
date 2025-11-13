.class public final synthetic Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->setToggleState(Z)V

    return-void
.end method
