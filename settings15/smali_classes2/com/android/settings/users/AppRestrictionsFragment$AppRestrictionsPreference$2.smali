.class public final Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

.field public final synthetic val$toggle:Landroid/widget/CompoundButton;


# direct methods
.method public constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Landroid/widget/CompoundButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference$2;->this$0:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    iput-object p2, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference$2;->val$toggle:Landroid/widget/CompoundButton;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference$2;->this$0:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    iget-object p1, p1, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->listener:Landroid/view/View$OnClickListener;

    iget-object p0, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference$2;->val$toggle:Landroid/widget/CompoundButton;

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
