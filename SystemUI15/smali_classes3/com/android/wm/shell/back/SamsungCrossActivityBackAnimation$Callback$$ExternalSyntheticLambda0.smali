.class public final synthetic Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$Callback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$Callback$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$Callback$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;

    sget-boolean v0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->DEBUG_PROGRESS:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->finishAnimation$2()V

    return-void
.end method
