.class public final Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final NONE:Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;


# instance fields
.field public final bottom:I

.field public final left:I

.field public final right:I

.field public final top:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;-><init>(IIII)V

    sput-object v0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->NONE:Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->left:I

    iput p2, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->top:I

    iput p3, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->right:I

    iput p4, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->bottom:I

    return-void
.end method

.method public static of(IIII)Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;
    .locals 1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    sget-object p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->NONE:Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;

    return-object p0

    :cond_0
    new-instance v0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;-><init>(IIII)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;

    iget v2, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->bottom:I

    iget v3, p1, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->bottom:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->left:I

    iget v3, p1, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->left:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->right:I

    iget v3, p1, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->right:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget p0, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->top:I

    iget p1, p1, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->top:I

    if-eq p0, p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->left:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->top:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->right:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->bottom:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExtraInsets{left="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->bottom:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/activity/BackEventCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
