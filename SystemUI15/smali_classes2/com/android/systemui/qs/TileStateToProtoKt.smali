.class public abstract Lcom/android/systemui/qs/TileStateToProtoKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final toProto(Lcom/android/systemui/plugins/qs/QSTile$State;)Lcom/android/systemui/qs/nano/QsTileState;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->spec:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/systemui/qs/nano/QsTileState;

    invoke-direct {v0}, Lcom/android/systemui/qs/nano/QsTileState;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->spec:Ljava/lang/String;

    const-string v2, "custom("

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/systemui/util/nano/ComponentNameProto;

    invoke-direct {v1}, Lcom/android/systemui/util/nano/ComponentNameProto;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->spec:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/systemui/util/nano/ComponentNameProto;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/util/nano/ComponentNameProto;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/nano/QsTileState;->setComponentName(Lcom/android/systemui/util/nano/ComponentNameProto;)Lcom/android/systemui/qs/nano/QsTileState;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->spec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/nano/QsTileState;->setSpec(Ljava/lang/String;)Lcom/android/systemui/qs/nano/QsTileState;

    :goto_0
    iget v1, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_3

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v4

    :goto_1
    iput v1, v0, Lcom/android/systemui/qs/nano/QsTileState;->state:I

    iget-object v1, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/nano/QsTileState;->setLabel(Ljava/lang/String;)Lcom/android/systemui/qs/nano/QsTileState;

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/nano/QsTileState;->setSecondaryLabel(Ljava/lang/String;)Lcom/android/systemui/qs/nano/QsTileState;

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    const-class v1, Landroid/widget/Switch;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    iget p0, v0, Lcom/android/systemui/qs/nano/QsTileState;->state:I

    if-ne p0, v3, :cond_7

    move v2, v4

    :cond_7
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/nano/QsTileState;->setBooleanState(Z)Lcom/android/systemui/qs/nano/QsTileState;

    :cond_8
    return-object v0
.end method
