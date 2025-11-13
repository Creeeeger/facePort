.class Lcom/android/settings/datausage/DataUsageList$8;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageList;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0

    .line 1145
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList$8;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "DataUsageList"

    const-string/jumbo v0, "onServiceConnected()"

    .line 1147
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList$8;->this$0:Lcom/android/settings/datausage/DataUsageList;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/android/settings/datausage/DataUsageList;->-$$Nest$fputmServiceMessenger(Lcom/android/settings/datausage/DataUsageList;Landroid/os/Messenger;)V

    .line 1149
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList$8;->this$0:Lcom/android/settings/datausage/DataUsageList;

    const/16 p2, 0x51

    const/16 v0, 0xb

    invoke-static {p1, p2, v0}, Lcom/android/settings/datausage/DataUsageList;->-$$Nest$mgetTimeData(Lcom/android/settings/datausage/DataUsageList;II)V

    .line 1150
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList$8;->this$0:Lcom/android/settings/datausage/DataUsageList;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/datausage/DataUsageList;->-$$Nest$fputmBound(Lcom/android/settings/datausage/DataUsageList;Z)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "DataUsageList"

    const-string/jumbo v0, "onServiceDisconnected()"

    .line 1154
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList$8;->this$0:Lcom/android/settings/datausage/DataUsageList;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/datausage/DataUsageList;->-$$Nest$fputmServiceMessenger(Lcom/android/settings/datausage/DataUsageList;Landroid/os/Messenger;)V

    .line 1156
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList$8;->this$0:Lcom/android/settings/datausage/DataUsageList;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/datausage/DataUsageList;->-$$Nest$fputmBound(Lcom/android/settings/datausage/DataUsageList;Z)V

    return-void
.end method
