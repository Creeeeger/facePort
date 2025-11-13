.class public final Lcom/android/systemui/settings/multisim/MultiSIMController$8;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string/jumbo p1, "select_icon_1"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MultiSIMController"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object v0, p2, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    iget-object p2, p2, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    aput p1, v0, v2

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object p2, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object p2, p2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    aget p2, p2, v2

    if-ltz p2, :cond_1

    iget p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mMaxSimIconNumber:I

    if-lt p2, p1, :cond_6

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mSimIconAndNameObserver onChange() SimImageIdx[0] = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object p2, p2, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object p2, p2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    aget p2, p2, v2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    aput v2, p1, v2

    goto/16 :goto_0

    :cond_2
    const-string/jumbo p1, "select_name_1"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object v0, p2, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    iget-object p2, p2, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    goto :goto_0

    :cond_3
    const-string/jumbo p1, "select_icon_2"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object v0, p2, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    iget-object p2, p2, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    aput p1, v0, v2

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object p2, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object p2, p2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    aget p2, p2, v2

    if-ltz p2, :cond_4

    iget p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mMaxSimIconNumber:I

    if-lt p2, p1, :cond_6

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mSimIconAndNameObserver onChange() SimImageIdx[1] = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object p2, p2, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object p2, p2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    aget p2, p2, v2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    aput v2, p1, v2

    goto :goto_0

    :cond_5
    const-string/jumbo p1, "select_name_2"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object v0, p2, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    iget-object p2, p2, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    sget-object p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->notifyDataToCallback()V

    return-void
.end method
