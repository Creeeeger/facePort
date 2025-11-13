.class public final Lcom/android/wm/shell/bubbles/BubbleLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method


# virtual methods
.method public final log(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget v0, p1, Lcom/android/wm/shell/bubbles/Bubble;->mAppUid:I

    iget-object v1, p1, Lcom/android/wm/shell/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/Bubble;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    invoke-interface {p0, p2, v0, v1, p1}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method
