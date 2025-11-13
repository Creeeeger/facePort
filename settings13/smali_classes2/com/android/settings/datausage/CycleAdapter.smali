.class public Lcom/android/settings/datausage/CycleAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CycleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;,
        Lcom/android/settings/datausage/CycleAdapter$CycleItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/settings/datausage/CycleAdapter$CycleItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsAppUsage:Z

.field private mIsSettedDate:Z

.field private mIsSupportSetCycle:Z

.field private final mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mSettedEndTime:J

.field private mSettedStartTime:J

.field private final mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 2

    .line 60
    sget v0, Lcom/android/settings/R$layout;->filter_spinner_item:I

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/android/settings/datausage/CycleAdapter;->mIsSettedDate:Z

    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Lcom/android/settings/datausage/CycleAdapter;->mSettedStartTime:J

    .line 49
    iput-wide v0, p0, Lcom/android/settings/datausage/CycleAdapter;->mSettedEndTime:J

    .line 50
    iput-boolean p1, p0, Lcom/android/settings/datausage/CycleAdapter;->mIsAppUsage:Z

    .line 54
    iput-boolean p1, p0, Lcom/android/settings/datausage/CycleAdapter;->mIsSupportSetCycle:Z

    .line 61
    sget p1, Lcom/android/settings/R$layout;->support_simple_spinner_dropdown_item:I

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 64
    iput-object p2, p0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    .line 65
    iput-object p3, p0, Lcom/android/settings/datausage/CycleAdapter;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 66
    invoke-interface {p2, p0}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->setAdapter(Lcom/android/settings/datausage/CycleAdapter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;ZZ)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/datausage/CycleAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 74
    iput-boolean p5, p0, Lcom/android/settings/datausage/CycleAdapter;->mIsAppUsage:Z

    return-void
.end method


# virtual methods
.method public addCycleSetItem(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/android/settings/datausage/CycleAdapter;->mIsSupportSetCycle:Z

    return-void
.end method

.method public findNearestPosition(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I
    .locals 2

    if-eqz p1, :cond_1

    .line 102
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 104
    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .line 105
    invoke-virtual {v1, p1}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->compareTo(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I

    move-result v1

    if-ltz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 126
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 127
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    if-eqz p0, :cond_0

    .line 128
    iget-object p1, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->description:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 129
    iget-object p0, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->description:Ljava/lang/String;

    invoke-virtual {p2, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 116
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 117
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    if-eqz p0, :cond_0

    .line 118
    iget-object p1, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->description:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 119
    iget-object p0, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->description:Ljava/lang/String;

    invoke-virtual {p2, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p2
.end method

.method public setEndTime(J)V
    .locals 0

    .line 86
    iput-wide p1, p0, Lcom/android/settings/datausage/CycleAdapter;->mSettedEndTime:J

    return-void
.end method

.method setInitialCycleList(Ljava/util/List;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->clear()V

    const/4 v0, 0x0

    .line 137
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 138
    new-instance v1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    add-int/lit8 v8, v0, 0x1

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {p0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 139
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-nez v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    invoke-interface {v1, v0}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->setSelection(I)V

    :cond_0
    move v0, v8

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setIsSettedDate(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/android/settings/datausage/CycleAdapter;->mIsSettedDate:Z

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    .line 82
    iput-wide p1, p0, Lcom/android/settings/datausage/CycleAdapter;->mSettedStartTime:J

    return-void
.end method

.method public updateCycleList(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/net/NetworkCycleData;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 150
    iget-object v1, v0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    iget-object v2, v0, Lcom/android/settings/datausage/CycleAdapter;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v1, v2}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 152
    iget-object v1, v0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    .line 153
    invoke-interface {v1}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .line 154
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 156
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 159
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/net/NetworkCycleData;

    .line 160
    new-instance v10, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    invoke-virtual {v2}, Lcom/android/settingslib/net/NetworkCycleData;->getStartTime()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/android/settingslib/net/NetworkCycleData;->getEndTime()J

    move-result-wide v6

    move-object v2, v10

    move-object v3, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v0, v10}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "CycleAdapter"

    const-string v3, "exception in load cycle data"

    .line 163
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 174
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lcom/android/settings/datausage/CycleAdapter;->mIsAppUsage:Z

    if-eqz v2, :cond_1

    .line 176
    new-instance v2, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    invoke-direct {v2, v8}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 177
    iget-boolean v2, v0, Lcom/android/settings/datausage/CycleAdapter;->mIsSettedDate:Z

    if-eqz v2, :cond_1

    .line 178
    new-instance v9, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    iget-wide v4, v0, Lcom/android/settings/datausage/CycleAdapter;->mSettedStartTime:J

    iget-wide v6, v0, Lcom/android/settings/datausage/CycleAdapter;->mSettedEndTime:J

    const/4 v10, 0x1

    move-object v2, v9

    move-object v3, v8

    move v8, v10

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;JJZ)V

    invoke-virtual {v0, v9}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 182
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/CycleAdapter;->findNearestPosition(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I

    move-result v14

    .line 183
    iget-object v2, v0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    invoke-interface {v2, v14}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->setSelection(I)V

    .line 185
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    invoke-virtual {v0, v14}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .line 189
    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 190
    iget-object v11, v0, Lcom/android/settings/datausage/CycleAdapter;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    invoke-interface/range {v11 .. v16}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_2
    return-void
.end method
