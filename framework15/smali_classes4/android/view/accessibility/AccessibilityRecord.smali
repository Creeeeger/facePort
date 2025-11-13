.class public Landroid/view/accessibility/AccessibilityRecord;
.super Ljava/lang/Object;
.source "AccessibilityRecord.java"


# static fields
.field protected static final greylist-max-o DEBUG_CONCISE_TOSTRING:Z = false

.field private static final greylist-max-o GET_SOURCE_PREFETCH_FLAGS:I = 0x7

.field private static final blacklist PROPERTY_ACCESSIBILITY_DATA_SENSITIVE:I = 0x400

.field private static final greylist-max-o PROPERTY_CHECKED:I = 0x1

.field private static final greylist-max-o PROPERTY_ENABLED:I = 0x2

.field private static final greylist-max-o PROPERTY_FULL_SCREEN:I = 0x80

.field private static final greylist-max-o PROPERTY_IMPORTANT_FOR_ACCESSIBILITY:I = 0x200

.field private static final greylist-max-o PROPERTY_PASSWORD:I = 0x4

.field private static final greylist-max-o PROPERTY_SCROLLABLE:I = 0x100

.field private static final greylist-max-o UNDEFINED:I = -0x1


# instance fields
.field greylist-max-o mAddedCount:I

.field greylist-max-o mBeforeText:Ljava/lang/CharSequence;

.field greylist-max-o mBooleanProperties:I

.field greylist-max-o mClassName:Ljava/lang/CharSequence;

.field greylist-max-o mConnectionId:I

.field greylist-max-o mContentDescription:Ljava/lang/CharSequence;

.field greylist-max-o mCurrentItemIndex:I

.field greylist-max-o mFromIndex:I

.field greylist-max-o mItemCount:I

.field greylist-max-o mMaxScrollX:I

.field greylist-max-o mMaxScrollY:I

.field greylist-max-o mParcelableData:Landroid/os/Parcelable;

.field greylist-max-o mRemovedCount:I

.field greylist-max-o mScrollDeltaX:I

.field greylist-max-o mScrollDeltaY:I

.field greylist-max-o mScrollX:I

.field greylist-max-o mScrollY:I

.field greylist mSealed:Z

.field blacklist mSourceDisplayId:I

.field greylist mSourceNodeId:J

.field greylist-max-o mSourceWindowId:I

.field final greylist-max-o mText:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mToIndex:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    sget-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceDisplayId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/accessibility/AccessibilityRecord;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    sget-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceDisplayId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->init(Landroid/view/accessibility/AccessibilityRecord;)V

    return-void
.end method

.method private greylist-max-o append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->appendPropName(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method private greylist-max-o append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->appendPropName(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private greylist-max-o appendPropName(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2

    const-string v0, "; "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o appendUnless(ZILjava/lang/StringBuilder;)V
    .locals 2

    invoke-direct {p0, p2}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityRecord;->singleBooleanPropertyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1}, Landroid/view/accessibility/AccessibilityRecord;->appendPropName(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-void
.end method

.method private greylist-max-o getBooleanProperty(I)Z
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist obtain()Landroid/view/accessibility/AccessibilityRecord;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityRecord;-><init>()V

    return-object v0
.end method

.method public static whitelist obtain(Landroid/view/accessibility/AccessibilityRecord;)Landroid/view/accessibility/AccessibilityRecord;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityRecord;->init(Landroid/view/accessibility/AccessibilityRecord;)V

    return-object v0
.end method

.method private greylist-max-o setBooleanProperty(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    :goto_0
    return-void
.end method

.method private static greylist-max-o singleBooleanPropertyToString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string v0, "AccessibilityDataSensitive"

    return-object v0

    :sswitch_1
    const-string v0, "ImportantForAccessibility"

    return-object v0

    :sswitch_2
    const-string v0, "Scrollable"

    return-object v0

    :sswitch_3
    const-string v0, "FullScreen"

    return-object v0

    :sswitch_4
    const-string v0, "Password"

    return-object v0

    :sswitch_5
    const-string v0, "Enabled"

    return-object v0

    :sswitch_6
    const-string v0, "Checked"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x4 -> :sswitch_4
        0x80 -> :sswitch_3
        0x100 -> :sswitch_2
        0x200 -> :sswitch_1
        0x400 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method greylist-max-o appendTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3

    const-string v0, " [ ClassName: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v0, "Text"

    invoke-direct {p0, p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->appendPropName(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "ContentDescription"

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ItemCount"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v0, "CurrentItemIndex"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->appendUnless(ZILjava/lang/StringBuilder;)V

    const/4 v0, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->appendUnless(ZILjava/lang/StringBuilder;)V

    invoke-direct {p0, v2, v1, p1}, Landroid/view/accessibility/AccessibilityRecord;->appendUnless(ZILjava/lang/StringBuilder;)V

    const/16 v0, 0x80

    invoke-direct {p0, v2, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->appendUnless(ZILjava/lang/StringBuilder;)V

    const/16 v0, 0x100

    invoke-direct {p0, v2, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->appendUnless(ZILjava/lang/StringBuilder;)V

    const/16 v0, 0x200

    invoke-direct {p0, v2, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->appendUnless(ZILjava/lang/StringBuilder;)V

    const/16 v0, 0x400

    invoke-direct {p0, v2, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->appendUnless(ZILjava/lang/StringBuilder;)V

    const-string v0, "BeforeText"

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "FromIndex"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v0, "ToIndex"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v0, "ScrollX"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v0, "ScrollY"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v0, "MaxScrollX"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v0, "MaxScrollY"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v0, "ScrollDeltaX"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v0, "ScrollDeltaY"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v0, "AddedCount"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v0, "RemovedCount"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v0, "ParcelableData"

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "DisplayId"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceDisplayId:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v0, " ]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method greylist-max-o clear()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-wide/32 v2, 0x7fffffff

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceDisplayId:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    return-void
.end method

.method greylist-max-o enforceNotSealed()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isSealed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this action on a sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o enforceSealed()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isSealed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this action on a not sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAddedCount()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    return v0
.end method

.method public whitelist getBeforeText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getClassName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getCurrentItemIndex()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    return v0
.end method

.method public whitelist getDisplayId()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceDisplayId:I

    return v0
.end method

.method public whitelist getFromIndex()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    return v0
.end method

.method public whitelist getItemCount()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    return v0
.end method

.method public whitelist getMaxScrollX()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    return v0
.end method

.method public whitelist getMaxScrollY()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    return v0
.end method

.method public whitelist getParcelableData()Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    return-object v0
.end method

.method public whitelist getRemovedCount()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    return v0
.end method

.method public whitelist getScrollDeltaX()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    return v0
.end method

.method public whitelist getScrollDeltaY()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    return v0
.end method

.method public whitelist getScrollX()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    return v0
.end method

.method public whitelist getScrollY()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    return v0
.end method

.method public whitelist getSource()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getSource(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSource(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 10

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceSealed()V

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    if-eq v0, v1, :cond_1

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v3, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    iget v4, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    move v8, p1

    invoke-virtual/range {v2 .. v9}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getSourceNodeId()J
    .locals 2

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    return-wide v0
.end method

.method public whitelist getText()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getToIndex()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    return v0
.end method

.method public whitelist getWindowId()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    return v0
.end method

.method greylist-max-o init(Landroid/view/accessibility/AccessibilityRecord;)V
    .locals 2

    iget-boolean v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceDisplayId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceDisplayId:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    return-void
.end method

.method blacklist isAccessibilityDataSensitive()Z
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isChecked()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isEnabled()Z
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isFullScreen()Z
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isImportantForAccessibility()Z
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isPassword()Z
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isScrollable()Z
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method greylist-max-o isSealed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    return v0
.end method

.method public whitelist recycle()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public whitelist semGetSourceNodeId()J
    .locals 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getSourceNodeId()J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist setAccessibilityDataSensitive(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    return-void
.end method

.method public whitelist setAddedCount(I)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    return-void
.end method

.method public whitelist setBeforeText(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    return-void
.end method

.method public whitelist setChecked(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    return-void
.end method

.method public whitelist setClassName(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    return-void
.end method

.method public greylist-max-o setConnectionId(I)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    return-void
.end method

.method public whitelist setContentDescription(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public whitelist setCurrentItemIndex(I)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    return-void
.end method

.method public blacklist setDisplayId(I)V
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceDisplayId:I

    return-void
.end method

.method public whitelist setEnabled(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    return-void
.end method

.method public whitelist setFromIndex(I)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    return-void
.end method

.method public whitelist setFullScreen(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    return-void
.end method

.method public greylist-max-o setImportantForAccessibility(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    return-void
.end method

.method public whitelist setItemCount(I)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    return-void
.end method

.method public whitelist setMaxScrollX(I)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    return-void
.end method

.method public whitelist setMaxScrollY(I)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    return-void
.end method

.method public whitelist setParcelableData(Landroid/os/Parcelable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    return-void
.end method

.method public whitelist setPassword(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    return-void
.end method

.method public whitelist setRemovedCount(I)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    return-void
.end method

.method public whitelist setScrollDeltaX(I)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    return-void
.end method

.method public whitelist setScrollDeltaY(I)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    return-void
.end method

.method public whitelist setScrollX(I)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    return-void
.end method

.method public whitelist setScrollY(I)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    return-void
.end method

.method public whitelist setScrollable(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    return-void
.end method

.method public greylist-max-o setSealed(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    return-void
.end method

.method public whitelist setSource(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    return-void
.end method

.method public whitelist setSource(Landroid/view/View;I)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    const/4 v0, 0x1

    const v1, 0x7fffffff

    const/4 v2, -0x1

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityWindowId()I

    move-result v2

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    nop

    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityDataSensitive()Z

    move-result v2

    const/16 v3, 0x400

    invoke-direct {p0, v3, v2}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    :cond_0
    const/16 v2, 0x200

    invoke-direct {p0, v2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    invoke-static {v1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    return-void
.end method

.method public greylist-max-o setSourceNodeId(J)V
    .locals 0

    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    return-void
.end method

.method public whitelist setToIndex(I)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    return-void
.end method

.method public greylist-max-o setWindowId(I)V
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->appendTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
