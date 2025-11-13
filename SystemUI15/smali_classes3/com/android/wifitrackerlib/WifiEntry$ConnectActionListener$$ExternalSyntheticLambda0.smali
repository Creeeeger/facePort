.class public final synthetic Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;

    iput p2, p0, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;

    iget p0, p0, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener$$ExternalSyntheticLambda0;->f$1:I

    iget-object v0, v0, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;->this$0:Lcom/android/wifitrackerlib/WifiEntry;

    iget-object v0, v0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    invoke-interface {v0, p0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;->onConnectResult(I)V

    :cond_1
    return-void
.end method
