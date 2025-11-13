.class public final Landroidx/preference/SwitchPreference$DummyClickListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Landroidx/preference/SwitchPreference;


# direct methods
.method private constructor <init>(Landroidx/preference/SwitchPreference;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/SwitchPreference$DummyClickListener;->this$0:Landroidx/preference/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/preference/SwitchPreference;Landroidx/preference/SwitchPreference$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/SwitchPreference$DummyClickListener;-><init>(Landroidx/preference/SwitchPreference;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Landroidx/preference/SwitchPreference$DummyClickListener;->this$0:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->callClickListener()V

    return-void
.end method
