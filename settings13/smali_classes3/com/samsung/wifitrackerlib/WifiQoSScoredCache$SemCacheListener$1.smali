.class Lcom/samsung/wifitrackerlib/WifiQoSScoredCache$SemCacheListener$1;
.super Ljava/lang/Object;
.source "WifiQoSScoredCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;->post()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;


# direct methods
.method constructor <init>(Lcom/samsung/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache$SemCacheListener$1;->this$0:Lcom/samsung/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache$SemCacheListener$1;->this$0:Lcom/samsung/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;

    invoke-virtual {p0}, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;->networkCacheUpdated()V

    return-void
.end method
