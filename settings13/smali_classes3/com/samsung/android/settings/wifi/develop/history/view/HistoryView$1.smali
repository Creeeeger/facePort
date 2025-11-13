.class Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView$1;
.super Ljava/lang/Object;
.source "HistoryView.java"

# interfaces
.implements Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph$ChartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView$1;->this$0:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public domainRangeAdjusted(FF)V
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView$1;->this$0:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->-$$Nest$mupdateDomainAxisLabels(Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;FF)V

    return-void
.end method
