.class public final Lcom/android/settings/datausage/CycleAdapter;
.super Landroid/widget/ArrayAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mIsSettedDate:Z

.field public mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mSettedEndTime:J

.field public mSettedStartTime:J

.field public final mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;)V
    .locals 2

    const v0, 0x7f0d088a

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/datausage/CycleAdapter;->mIsSettedDate:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/datausage/CycleAdapter;->mSettedStartTime:J

    iput-wide v0, p0, Lcom/android/settings/datausage/CycleAdapter;->mSettedEndTime:J

    const p1, 0x7f0d0bd5

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iput-object p2, p0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    invoke-interface {p2, p0}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->setAdapter(Lcom/android/settings/datausage/CycleAdapter;)V

    return-void
.end method


# virtual methods
.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    if-eqz p0, :cond_0

    iget-object p1, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->description:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->description:Ljava/lang/String;

    invoke-virtual {p2, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p2
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    if-eqz p0, :cond_0

    iget-object p1, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->description:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->description:Ljava/lang/String;

    invoke-virtual {p2, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p2
.end method

.method public final updateCycleList(Ljava/util/List;)V
    .locals 12

    iget-object v0, p0, Lcom/android/settings/datausage/CycleAdapter;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    invoke-interface {v1, v0}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    invoke-interface {v0}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->clear()V

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    :try_start_0
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    new-instance v8, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v1, v8

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {p0, v8}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "CycleAdapter"

    const-string v1, "exception in load cycle data"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p1

    if-lez p1, :cond_6

    sget-boolean p1, Lcom/samsung/android/settings/Rune;->SUPPORT_SMARTMANAGER_CN:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/datausage/CycleAdapter;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz p1, :cond_2

    new-instance p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-boolean v9, p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->dateSetByUser:Z

    iput-boolean v9, p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->isUserSettedItem:Z

    const v1, 0x7f142a7a

    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->label:Ljava/lang/CharSequence;

    iput-boolean v8, p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->dateSetByUser:Z

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/android/settings/datausage/CycleAdapter;->mIsSettedDate:Z

    if-eqz p1, :cond_2

    new-instance p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    iget-wide v3, p0, Lcom/android/settings/datausage/CycleAdapter;->mSettedStartTime:J

    iget-wide v10, p0, Lcom/android/settings/datausage/CycleAdapter;->mSettedEndTime:J

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, v7

    move-wide v6, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;JIJ)V

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    :cond_2
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, v8

    :goto_1
    if-ltz p1, :cond_5

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    iget-wide v2, v1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    iget-wide v4, v0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v2

    sget-boolean v3, Lcom/samsung/android/settings/Rune;->SUPPORT_SMARTMANAGER_CN:Z

    if-eqz v3, :cond_3

    iget-boolean v1, v1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->isUserSettedItem:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->isUserSettedItem:Z

    if-nez v1, :cond_3

    const/4 v2, -0x1

    :cond_3
    if-ltz v2, :cond_4

    move v4, p1

    goto :goto_2

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_5
    move v4, v9

    :goto_2
    iget-object p1, p0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    invoke-interface {p1, v4}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->setSelection(I)V

    sget-boolean p1, Lcom/samsung/android/settings/Rune;->SUPPORT_SMARTMANAGER_CN:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0, v4}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object v1, p0, Lcom/android/settings/datausage/CycleAdapter;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_6

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_6
    return-void
.end method
