.class public final synthetic Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/SecMediaControlPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/SecMediaControlPanel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/SecMediaControlPanel;

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/SecMediaControlPanel;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaType;->getSupportBudsButton()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "buds_enable"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateBudsButton()V

    :cond_1
    :goto_0
    return-void
.end method
