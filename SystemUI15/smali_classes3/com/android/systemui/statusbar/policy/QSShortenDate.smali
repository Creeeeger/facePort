.class public Lcom/android/systemui/statusbar/policy/QSShortenDate;
.super Lcom/android/systemui/statusbar/policy/QSDate;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QSDate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSShortenDate;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final notifyTimeChanged(Lcom/android/systemui/statusbar/policy/QSClockBellSound;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSShortenDate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ko"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->DateText:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->ShortDateText:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSDate;->mLastText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSDate;->mLastText:Ljava/lang/String;

    :cond_2
    return-void
.end method
