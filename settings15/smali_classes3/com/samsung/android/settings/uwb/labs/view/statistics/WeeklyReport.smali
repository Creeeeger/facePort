.class public abstract Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mGraphDataImage1:Landroid/widget/ImageView;

.field public final mGraphDataImage2:Landroid/widget/ImageView;

.field public final mGraphDataImage3:Landroid/widget/ImageView;

.field public final mGraphDate:Landroid/widget/TextView;

.field public final mGraphText1:Landroid/widget/TextView;

.field public final mGraphText2:Landroid/widget/TextView;

.field public final mGraphText3:Landroid/widget/TextView;

.field public final mGraphValue1:Landroid/widget/TextView;

.field public final mGraphValue2:Landroid/widget/TextView;

.field public final mGraphValue3:Landroid/widget/TextView;

.field public final mHolder:Landroidx/preference/PreferenceViewHolder;

.field public final mWeeklyDate:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mWeeklyDate:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const p1, 0x7f0a114a

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphDate:Landroid/widget/TextView;

    const p1, 0x7f0a06e6

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphText1:Landroid/widget/TextView;

    const p1, 0x7f0a06e8

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphText2:Landroid/widget/TextView;

    const p1, 0x7f0a06ea

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphText3:Landroid/widget/TextView;

    const p1, 0x7f0a06e7

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphValue1:Landroid/widget/TextView;

    const p1, 0x7f0a06e9

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphValue2:Landroid/widget/TextView;

    const p1, 0x7f0a06eb

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphValue3:Landroid/widget/TextView;

    const p1, 0x7f0a06e3

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphDataImage1:Landroid/widget/ImageView;

    const v0, 0x7f0a06e4

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphDataImage2:Landroid/widget/ImageView;

    const v1, 0x7f0a06e5

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphDataImage3:Landroid/widget/ImageView;

    const v1, 0x7f0606f0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->getPointDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f0606f1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->getPointDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f0606f2

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->getPointDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final generateWeekData()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mWeeklyDate:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/settings/uwb/labs/common/Week;->values()[Lcom/samsung/android/settings/uwb/labs/common/Week;

    move-result-object v4

    invoke-static {v2}, Lcom/samsung/android/settings/uwb/labs/common/UwbLabsUtils;->convertWeekDay(I)I

    move-result v2

    aget-object v2, v4, v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/uwb/labs/common/Week;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/settings/uwb/labs/common/Month;->values()[Lcom/samsung/android/settings/uwb/labs/common/Month;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/samsung/android/settings/uwb/labs/common/Month;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/settings/uwb/labs/common/UwbLabsUtils;->toDateFormat(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mWeeklyDate:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getPointDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mContext:Landroid/content/Context;

    const v1, 0x7f080aa3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method
