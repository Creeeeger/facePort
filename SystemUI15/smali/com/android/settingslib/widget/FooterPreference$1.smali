.class public final Lcom/android/settingslib/widget/FooterPreference$1;
.super Landroid/text/style/ClickableSpan;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/widget/FooterPreference;

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/widget/FooterPreference;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/widget/FooterPreference$1;->this$0:Lcom/android/settingslib/widget/FooterPreference;

    iput-object p2, p0, Lcom/android/settingslib/widget/FooterPreference$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/settingslib/widget/FooterPreference$1;->this$0:Lcom/android/settingslib/widget/FooterPreference;

    iget-object p1, p1, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settingslib/widget/FooterPreference$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
