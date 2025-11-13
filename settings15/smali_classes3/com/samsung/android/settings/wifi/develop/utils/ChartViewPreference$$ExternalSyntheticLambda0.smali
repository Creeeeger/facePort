.class public final synthetic Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;

    check-cast p1, [Ljava/lang/Integer;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->mChartView:Lcom/samsung/android/settings/wifi/develop/utils/ChartView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->update([Ljava/lang/Integer;)V

    return-void
.end method
