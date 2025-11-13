.class public final Lcom/samsung/android/sdk/cover/ScoverState;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public attached:Z

.field public color:I

.field public fakeCover:Z

.field public fotaMode:I

.field public heightPixel:I

.field public mVisibleRect:Landroid/graphics/Rect;

.field public switchState:Z

.field public type:I

.field public widthPixel:I


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 10

    iget-boolean v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fakeCover:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fotaMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/sdk/cover/ScoverState;->mVisibleRect:Landroid/graphics/Rect;

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "ScoverState(switchState=%b type=%d color=%d widthPixel=%d heightPixel=%d attached=%b fakeCover=%b fotaMode=%d VisibleRect=%s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
