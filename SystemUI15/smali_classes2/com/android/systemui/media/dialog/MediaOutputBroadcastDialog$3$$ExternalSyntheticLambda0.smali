.class public final synthetic Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$3;

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$3;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;

    sget v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->BROADCAST_CODE_MAX_LENGTH:I

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->refreshUi()V

    return-void
.end method
