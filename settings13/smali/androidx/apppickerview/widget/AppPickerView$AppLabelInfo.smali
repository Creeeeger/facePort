.class public Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;
.super Ljava/lang/Object;
.source "AppPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/apppickerview/widget/AppPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppLabelInfo"
.end annotation


# instance fields
.field private mActivityName:Ljava/lang/String;

.field private mIsCustomViewItem:Z

.field private mIsSeparator:Z

.field private mLabel:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mSpanCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    iput-object p1, p0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mPackageName:Ljava/lang/String;

    .line 795
    iput-object p2, p0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mLabel:Ljava/lang/String;

    const/4 p1, 0x0

    .line 796
    iput-boolean p1, p0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mIsSeparator:Z

    .line 797
    iput-boolean p1, p0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mIsCustomViewItem:Z

    .line 798
    iput-object p3, p0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mActivityName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActivityName()Ljava/lang/String;
    .locals 0

    .line 810
    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mActivityName:Ljava/lang/String;

    return-object p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    .line 818
    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 802
    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getSpanCount()I
    .locals 0

    .line 845
    iget p0, p0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mSpanCount:I

    return p0
.end method

.method public isCustomViewItem()Z
    .locals 0

    .line 841
    iget-boolean p0, p0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mIsCustomViewItem:Z

    return p0
.end method

.method public isSeparator()Z
    .locals 0

    .line 826
    iget-boolean p0, p0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mIsSeparator:Z

    return p0
.end method

.method public setActivityName(Ljava/lang/String;)V
    .locals 0

    .line 814
    iput-object p1, p0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mActivityName:Ljava/lang/String;

    return-void
.end method

.method public setCustomViewItem(ZI)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;
    .locals 0

    .line 835
    iput-boolean p1, p0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mIsCustomViewItem:Z

    .line 836
    iput p2, p0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mSpanCount:I

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 806
    iput-object p1, p0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setSeparator(Z)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;
    .locals 0

    .line 830
    iput-boolean p1, p0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mIsSeparator:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[AppLabel] label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
