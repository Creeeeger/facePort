.class public final Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mActivityName:Ljava/lang/String;

.field public mIsCustomViewItem:Z

.field public mIsSeparator:Z

.field public final mLabel:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public mSpanCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mLabel:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mIsSeparator:Z

    iput-boolean p1, p0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mIsCustomViewItem:Z

    iput-object p3, p0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mActivityName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[AppLabel] label="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
