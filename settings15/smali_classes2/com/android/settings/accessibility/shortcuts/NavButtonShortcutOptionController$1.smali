.class public final Lcom/android/settings/accessibility/shortcuts/NavButtonShortcutOptionController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$SummaryProvider;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/accessibility/shortcuts/NavButtonShortcutOptionController;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/shortcuts/NavButtonShortcutOptionController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/shortcuts/NavButtonShortcutOptionController$1;->this$0:Lcom/android/settings/accessibility/shortcuts/NavButtonShortcutOptionController;

    return-void
.end method


# virtual methods
.method public final provideSummary(Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 0

    check-cast p1, Lcom/android/settings/accessibility/shortcuts/ShortcutOptionPreference;

    iget p1, p1, Lcom/android/settings/accessibility/shortcuts/ShortcutOptionPreference;->mSummaryTextLineHeight:I

    iget-object p0, p0, Lcom/android/settings/accessibility/shortcuts/NavButtonShortcutOptionController$1;->this$0:Lcom/android/settings/accessibility/shortcuts/NavButtonShortcutOptionController;

    invoke-static {p0, p1}, Lcom/android/settings/accessibility/shortcuts/NavButtonShortcutOptionController;->-$$Nest$mgetSummary(Lcom/android/settings/accessibility/shortcuts/NavButtonShortcutOptionController;I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
