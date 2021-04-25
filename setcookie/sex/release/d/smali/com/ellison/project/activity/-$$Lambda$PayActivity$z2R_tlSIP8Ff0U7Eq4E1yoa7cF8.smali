.class public final synthetic Lcom/ellison/project/activity/-$$Lambda$PayActivity$z2R_tlSIP8Ff0U7Eq4E1yoa7cF8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ellison/project/activity/PayActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ellison/project/activity/PayActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ellison/project/activity/-$$Lambda$PayActivity$z2R_tlSIP8Ff0U7Eq4E1yoa7cF8;->f$0:Lcom/ellison/project/activity/PayActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/ellison/project/activity/-$$Lambda$PayActivity$z2R_tlSIP8Ff0U7Eq4E1yoa7cF8;->f$0:Lcom/ellison/project/activity/PayActivity;

    invoke-virtual {v0}, Lcom/ellison/project/activity/PayActivity;->lambda$delayPost$1$PayActivity()V

    return-void
.end method
