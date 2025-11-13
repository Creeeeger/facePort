.class Lcom/android/settings/datausage/DataUsageList$11$1;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataUsageList$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/datausage/DataUsageList$11;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageList$11;)V
    .locals 0

    .line 1256
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList$11$1;->this$1:Lcom/android/settings/datausage/DataUsageList$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1259
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList$11$1;->this$1:Lcom/android/settings/datausage/DataUsageList$11;

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList$11;->this$0:Lcom/android/settings/datausage/DataUsageList;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/datausage/DataUsageList;->-$$Nest$mresetTimeData(Lcom/android/settings/datausage/DataUsageList;I)V

    return-void
.end method
