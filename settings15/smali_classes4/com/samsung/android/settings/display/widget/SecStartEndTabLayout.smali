.class Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;
.super Lcom/google/android/material/tabs/TabLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mTabIndex:I

.field public mTimeFormatter:Landroidx/arch/core/util/Function;

.field public final mTimes:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f150340

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->mTimes:[I

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->mTabIndex:I

    new-instance p1, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->mTimeFormatter:Landroidx/arch/core/util/Function;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->seslSetSubTabStyle()V

    return-void
.end method


# virtual methods
.method public final updateTime(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->mTimes:[I

    aput p2, v0, p1

    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->mTimeFormatter:Landroidx/arch/core/util/Function;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->subText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->updateView()V

    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->updateView()V

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->updateView()V

    :goto_0
    return-void
.end method
