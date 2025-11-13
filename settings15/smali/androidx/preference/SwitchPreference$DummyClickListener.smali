.class public final Landroidx/preference/SwitchPreference$DummyClickListener;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Landroidx/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroidx/preference/SwitchPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/preference/SwitchPreference$DummyClickListener;->this$0:Landroidx/preference/SwitchPreference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Landroidx/preference/SwitchPreference$DummyClickListener;->this$0:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->callClickListener()V

    return-void
.end method
