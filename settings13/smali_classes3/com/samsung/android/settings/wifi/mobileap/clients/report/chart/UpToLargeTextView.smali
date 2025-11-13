.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UpToLargeTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "UpToLargeTextView.java"


# instance fields
.field private mUpToLarge:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 10
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UpToLargeTextView;->mUpToLarge:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UpToLargeTextView;->mUpToLarge:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UpToLargeTextView;->mUpToLarge:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 33
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UpToLargeTextView;->mUpToLarge:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;->onConfigurationChanged(Landroid/widget/TextView;Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 26
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 27
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UpToLargeTextView;->mUpToLarge:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwUpToLarge;->onFinishInflate(Landroid/widget/TextView;)V

    return-void
.end method
