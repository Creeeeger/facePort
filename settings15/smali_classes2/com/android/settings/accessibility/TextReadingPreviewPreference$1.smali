.class public final Lcom/android/settings/accessibility/TextReadingPreviewPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/accessibility/TextReadingPreviewPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/TextReadingPreviewPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference$1;->this$0:Lcom/android/settings/accessibility/TextReadingPreviewPreference;

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final onPageScrolled(IIF)V
    .locals 0

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference$1;->this$0:Lcom/android/settings/accessibility/TextReadingPreviewPreference;

    iput p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mCurrentItem:I

    return-void
.end method
