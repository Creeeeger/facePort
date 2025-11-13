.class Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/wallet/ui/WalletCardViewInfo;


# instance fields
.field public final mCardDrawable:Landroid/graphics/drawable/Drawable;

.field public final mIconDrawable:Landroid/graphics/drawable/Drawable;

.field public final mWalletCard:Landroid/service/quickaccesswallet/WalletCard;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/service/quickaccesswallet/WalletCard;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->mWalletCard:Landroid/service/quickaccesswallet/WalletCard;

    invoke-virtual {p2}, Landroid/service/quickaccesswallet/WalletCard;->getCardImage()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->mCardDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/service/quickaccesswallet/WalletCard;->getCardImage()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->mCardDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {p2}, Landroid/service/quickaccesswallet/WalletCard;->getCardIcon()Landroid/graphics/drawable/Icon;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    if-eq v0, v4, :cond_2

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    if-ne v0, v3, :cond_3

    :cond_2
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_3
    iput-object v2, p0, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    :goto_2
    return-void
.end method
