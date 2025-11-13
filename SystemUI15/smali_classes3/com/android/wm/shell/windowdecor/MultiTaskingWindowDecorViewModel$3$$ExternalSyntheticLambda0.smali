.class public final synthetic Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$3$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$3$$ExternalSyntheticLambda0;->f$0:I

    sget v0, Lcom/android/wm/shell/windowdecor/CaptionGlobalState;->TRANSIENT_DELAY:I

    if-eq v0, p0, :cond_0

    sput p0, Lcom/android/wm/shell/windowdecor/CaptionGlobalState;->TRANSIENT_DELAY:I

    :cond_0
    return-void
.end method
