.class public Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;
.super Ljava/lang/Object;
.source "ActionInfo.java"


# instance fields
.field private blacklist mDescription:Ljava/lang/String;

.field private blacklist mIconResId:I

.field private blacklist mLabel:Ljava/lang/String;

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mStateLabel:Ljava/lang/String;

.field private blacklist mViewIndex:I

.field private blacklist mViewType:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;


# direct methods
.method public constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->mName:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->mIconResId:I

    sget-object v2, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->CENTER_ICON_1P_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    iput-object v2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->mViewType:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->mLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->mDescription:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->mViewIndex:I

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->mStateLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getIcon()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->mIconResId:I

    return v0
.end method

.method public blacklist getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getStateLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->mStateLabel:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getViewIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->mViewIndex:I

    return v0
.end method

.method public blacklist getViewType()Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->mViewType:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    return-object v0
.end method

.method public blacklist setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public blacklist setIcon(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->mIconResId:I

    return-void
.end method

.method public blacklist setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->mLabel:Ljava/lang/String;

    return-void
.end method

.method public blacklist setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->mName:Ljava/lang/String;

    return-void
.end method

.method public blacklist setStateLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->mStateLabel:Ljava/lang/String;

    return-void
.end method

.method public blacklist setViewIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->mViewIndex:I

    return-void
.end method

.method public blacklist setViewType(Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->mViewType:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    return-void
.end method
