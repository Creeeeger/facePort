.class public final Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mDBValue:Ljava/util/List;

.field public mNameStringId:Ljava/util/List;


# virtual methods
.method public final addItem(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->mNameStringId:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->mDBValue:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
