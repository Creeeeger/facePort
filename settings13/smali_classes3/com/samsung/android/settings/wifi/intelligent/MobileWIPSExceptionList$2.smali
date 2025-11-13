.class Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$2;
.super Landroid/database/ContentObserver;
.source "MobileWIPSExceptionList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;Landroid/os/Handler;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$2;->this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const-string p1, "MobileWIPSExceptionList"

    const-string v0, "AllowList db was updated"

    .line 110
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$2;->this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->-$$Nest$msetExceptionListUp(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;)V

    return-void
.end method
