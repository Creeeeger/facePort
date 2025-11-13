.class public final synthetic Lcom/android/systemui/globalactions/GlobalActionsColumnLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/globalactions/GlobalActionsColumnLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsColumnLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsColumnLayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/globalactions/GlobalActionsColumnLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsColumnLayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/globalactions/GlobalActionsColumnLayout;

    sget v0, Lcom/android/systemui/globalactions/GlobalActionsColumnLayout;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsColumnLayout;->updateSnap()V

    return-void
.end method
